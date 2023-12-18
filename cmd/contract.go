package main

import (
	"context"
	"crypto/ecdsa"
	"encoding/json"
	"fmt"
	"github.com/ethereum/go-ethereum"
	"github.com/ethereum/go-ethereum/accounts/abi"
	"github.com/ethereum/go-ethereum/accounts/abi/bind"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/core/types"
	"github.com/ethereum/go-ethereum/crypto"
	"github.com/ethereum/go-ethereum/ethclient"
	"github.com/iden3/go-iden3-crypto/babyjub"
	"golang.org/x/exp/maps"
	"log"
	"math/big"
	"os"
	"strings"
	"time"
	"zk-rollups/contracts/middleware_contract"
	"zk-rollups/contracts/mimc_contract"
	"zk-rollups/utils"
)

type AddressesFile struct {
	AddressesMap   map[string]string `json:"addresses"`
	PrivateKeysMap map[string]string `json:"private_keys"`
}

type Transaction struct {
	FromX  *big.Int
	FromY  *big.Int
	ToX    *big.Int
	ToY    *big.Int
	Amount *big.Int
	R8X    *big.Int
	R8Y    *big.Int
	S      *big.Int
}

type TransactionEvent struct {
	FromX  [32]byte
	FromY  [32]byte
	ToX    [32]byte
	ToY    [32]byte
	Amount *big.Int
	R8X    [32]byte
	R8Y    [32]byte
	S      [32]byte
}

//func (tx *Transaction) NewTx(fromX, fromY, toX, toY *big.Int, amount *big.Int) Transaction {
//	return Transaction{
//		FromX:  fromX,
//		FromY:  fromY,
//		ToX:    toX,
//		ToY:    toY,
//		Amount: amount,
//		R8X:    nil,
//		R8Y:    nil,
//		S:      nil,
//	}
//}

func LoadJsonAccounts() AddressesFile {
	// load user "index" from json file to deploy contracts
	var addressesFile AddressesFile
	filePath := "contracts/file_gen/accounts.json"
	data, err := os.ReadFile(filePath)
	if err != nil {
		fmt.Println("error read file")
		return addressesFile
	}
	err = json.Unmarshal(data, &addressesFile)
	if err != nil {
		fmt.Println("error unmarshal json")
		return addressesFile
	}
	return addressesFile
}

func DeploySmartContract(client *ethclient.Client) (err error) {
	// ================== Deploy contracts ==================
	// load json file accounts
	addressesFile := LoadJsonAccounts()

	// load Auth to deploy contracts
	auth0, err := loadAuth(addressesFile, client, 0)
	auth1, err := loadAuth(addressesFile, client, 1)
	if err != nil {
		fmt.Println("error when load auth to deploy contracts")
		log.Fatal(err)
	}

	// deploy contracts
	// Mimc contract
	mimcAddress, mimcTx, mimcInstance, err := mimc_contract.DeployMimcContract(auth0, client)
	if err != nil {
		fmt.Println("error deploy Mimc contracts")
		log.Fatal(err)
	}
	fmt.Println("Success, Mimc contract address: ", mimcAddress.Hex())
	_ = mimcInstance
	_ = mimcTx
	_ = mimcAddress

	// Middleware contract
	//mimcAddressFake := common.HexToAddress("0x5FbDB2315678afecb367f032d93F642f64180aa3")
	initialAccountRoot := [32]byte{}
	middlewareAddress, middTx, middlewareInstance, err := middleware_contract.DeployMiddlewareContract(auth1, client, mimcAddress, initialAccountRoot)
	if err != nil {
		fmt.Println("error deploy Middleware contracts")
		log.Fatal(err)
	}
	fmt.Println("Success, Middleware contract address: ", middlewareAddress.Hex())
	_ = middlewareInstance
	_ = middTx
	_ = middlewareAddress

	// ================== Subscribing Log ==================
	sub, logs, err := subscribeLogs(middlewareAddress, client)
	if err != nil {
		fmt.Println("error subscribe filter logs")
		log.Fatal(err)
	}
	waitGr := make(chan int)
	// goroutine to handle logs
	go func(sub ethereum.Subscription, logs chan types.Log, waitGr chan int) {
		fmt.Println("Start goroutine to handle logs")
		waitGr <- 1
		for {
			select {
			case err := <-sub.Err():
				fmt.Println("error subscribe filter logs")
				log.Fatal(err)
			case vLog := <-logs:
				fmt.Println("Handle contract log")
				waitGr <- 1
				handleMiddlewareLog(vLog)
			}
		}
	}(sub, logs, waitGr)

	// ================== Call contracts ==================
	// test deposit from 2 -> 3
	//auth2, _ := loadAuth(addressesFile, client, 2)
	<-waitGr
	depositTx := debugCreateTx(addressesFile, 15)
	tx, err := middlewareInstance.Deposit(auth1, [32]byte(depositTx.FromX.Bytes()), [32]byte(depositTx.FromY.Bytes()),
		[32]byte(depositTx.ToX.Bytes()), [32]byte(depositTx.ToY.Bytes()), depositTx.Amount, [32]byte{0}, [32]byte{0}, [32]byte{0})
	fmt.Printf("\ntx middlewareInstance.Deposit sent: %s", tx.Hash().Hex())

	//<-waitGr
	//debugTx, err := middlewareInstance.DebugCalled(auth1)
	//fmt.Printf("\ntx middlewareInstance.DebugCalled sent: %s", debugTx.Hash().Hex())
	//fmt.Println("\ndone call debug contract")
	<-waitGr
	for {
		time.Sleep(1000 * time.Millisecond)
	}
	return nil
}

func loadAuth(addressesFile AddressesFile, client *ethclient.Client, index int) (*bind.TransactOpts, error) {
	// get chain id
	chainID, err := client.ChainID(context.Background())
	if err != nil {
		return nil, err
	}

	pubKeys := maps.Keys(addressesFile.AddressesMap)
	userZeroPubKey := pubKeys[index]
	privateKeyHex := addressesFile.PrivateKeysMap[userZeroPubKey][2:]
	privateKeyECDSA, err := crypto.HexToECDSA(privateKeyHex)
	if err != nil {
		fmt.Println("error HexToECDSA private key")
		log.Fatal(err)
	}

	publicKey := privateKeyECDSA.Public()
	publicKeyECDSA, ok := publicKey.(*ecdsa.PublicKey)
	if !ok {
		log.Fatal("error casting public key to ECDSA")
	}
	fromAddress := crypto.PubkeyToAddress(*publicKeyECDSA)
	nonce, err := client.PendingNonceAt(context.Background(), fromAddress)
	if err != nil {
		fmt.Println("error get nonce")
		log.Fatal(err)
	}
	gasPrice, err := client.SuggestGasPrice(context.Background())
	if err != nil {
		fmt.Println("error get gas price")
		log.Fatal(err)
	}

	// get signer
	auth, err := bind.NewKeyedTransactorWithChainID(privateKeyECDSA, chainID)
	if err != nil {
		return nil, err
	}
	auth.Nonce = big.NewInt(int64(nonce))
	auth.Value = big.NewInt(0)      // in wei
	auth.GasLimit = uint64(3000000) // in units
	auth.GasPrice = gasPrice        // in wei
	if err != nil {
		return nil, err
	}
	return auth, nil
}

func debugCreateTx(addressesFile AddressesFile, amount int) Transaction {
	// #1 not done yet
	//filePubKeys := maps.Keys(addressesFile.AddressesMap)
	//
	//edDsaPubkeyFrom := babyjub.PublicKey{}
	//edDsaPubkeyTo := babyjub.PublicKey{}
	//err := edDsaPubkeyFrom.UnmarshalText([]byte(filePubKeys[2]))
	//err = edDsaPubkeyTo.UnmarshalText([]byte(filePubKeys[3]))
	//if err != nil {
	//	fmt.Println("error UnmarshalText eddsaPubkey")
	//	log.Fatal(err)
	//}

	//#2: use rand from lib
	privKey1 := babyjub.NewRandPrivKey()
	privKey2 := babyjub.NewRandPrivKey()
	edDsaPubkeyFrom := privKey1.Public()
	edDsaPubkeyTo := privKey2.Public()

	return Transaction{
		FromX:  edDsaPubkeyFrom.Point().X,
		FromY:  edDsaPubkeyFrom.Point().Y,
		ToX:    edDsaPubkeyTo.Point().X,
		ToY:    edDsaPubkeyTo.Point().Y,
		Amount: big.NewInt(int64(amount)),
	}
}

func handleMiddlewareLog(vLog types.Log) {
	// TODO: need convert it as a const to use later
	middlewareContractAbi, err := abi.JSON(strings.NewReader(middleware_contract.MiddlewareContractMetaData.ABI))
	if err != nil {
		fmt.Println("error abi.JSON middleware contract")
		log.Fatal(err)
	}

	switch vLog.Topics[0].Hex() {
	case utils.TopicDebugCalled:
		events, err := middlewareContractAbi.Unpack(utils.NameDebugCalled, vLog.Data)
		if err != nil {
			fmt.Println("error Unpack middleware event dGetString")
			log.Fatal(err)
		}
		fmt.Println("vlog.Data: ", string(vLog.Data))
		for _, item := range events {
			event := item.(string)
			fmt.Println("event: ", event)
		}
	case utils.TopicDepositRegister:
		events, err := middlewareContractAbi.Unpack(utils.NameDepositRegister, vLog.Data)
		if err != nil {
			fmt.Println("error Unpack middleware event eDepositRegister")
			log.Fatal(err)
		}
		data := TransactionEvent{}
		data.FromX = events[0].([32]byte)
		data.FromY = events[1].([32]byte)
		data.ToX = events[2].([32]byte)
		data.ToY = events[3].([32]byte)
		data.Amount = events[4].(*big.Int)
		fmt.Println("data: ", data)
	}
}

func subscribeLogs(middlewareAddress common.Address, client *ethclient.Client) (ethereum.Subscription, chan types.Log, error) {
	// subscribe to log
	query := ethereum.FilterQuery{
		Addresses: []common.Address{middlewareAddress},
	}
	logs := make(chan types.Log)

	fmt.Println("Subscribe filter logs") //debug: remove later
	sub, err := client.SubscribeFilterLogs(context.Background(), query, logs)
	if err != nil {
		fmt.Println("error subscribe filter logs")
		log.Fatal(err)
		return nil, nil, err
	}
	return sub, logs, err
}
