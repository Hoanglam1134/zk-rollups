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
	"zk-rollups/internal/models"
	"zk-rollups/utils"
)

var (
	DepositRegisterTxs []*models.Transaction
	//DepositExistenceTxs []models.TransactionEvent
)

type AddressesFile struct {
	AddressesMap   map[string]string `json:"addresses"`
	PrivateKeysMap map[string]string `json:"private_keys"`
}

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
	// ================ Init Account Tree ================
	accountTree := models.NewAccountTree()

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

	//================== Subscribing Log ==================
	sub, logs, err := subscribeLogs(middlewareAddress, client)
	if err != nil {
		fmt.Println("error subscribe filter logs")
		log.Fatal(err)
	}
	//goroutine to handle logs
	go func(sub ethereum.Subscription, logs chan types.Log, tree *models.AccountTree) {
		fmt.Println("Start goroutine to handle logs")
		for {
			select {
			case err := <-sub.Err():
				fmt.Println("error subscribe filter logs")
				log.Fatal(err)
			case vLog := <-logs:
				fmt.Println("\nHandle contract log")
				handleMiddlewareLog(vLog, tree)
			}
		}
	}(sub, logs, accountTree)

	// ================== Call contracts ==================
	// test deposit from 2 -> 3
	auth2, _ := loadAuth(addressesFile, client, 2)
	//<-waitGr

	for i := 1; i <= 4; i++ {
		depositTx := debugCreateTx(addressesFile, 15)
		//  prepare data
		fromX := utils.ConvertToBytes32(depositTx.FromX)
		fromY := utils.ConvertToBytes32(depositTx.FromY)
		toX := utils.ConvertToBytes32(depositTx.ToX)
		toY := utils.ConvertToBytes32(depositTx.ToY)
		r8x := utils.ConvertToBytes32(depositTx.R8X)
		r8y := utils.ConvertToBytes32(depositTx.R8Y)
		s := utils.ConvertToBytes32(depositTx.S)
		tx, err := middlewareInstance.Deposit(auth2, fromX, fromY, toX, toY, depositTx.Amount, r8x, r8y, s)
		if err != nil {
			fmt.Println("error call deposit middleware contract")
			log.Fatal(err)
		}
		_ = tx
	}
	for {
		// waiting time for see results
		time.Sleep(60000 * time.Millisecond)
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

func debugCreateTx(addressesFile AddressesFile, amount int) models.Transaction {
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

	tx := models.Transaction{
		FromX:  edDsaPubkeyFrom.Point().X.Bytes(),
		FromY:  edDsaPubkeyFrom.Point().Y.Bytes(),
		ToX:    edDsaPubkeyTo.Point().X.Bytes(),
		ToY:    edDsaPubkeyTo.Point().Y.Bytes(),
		Amount: big.NewInt(int64(amount)),
	}

	// sign Tx, also set new values to R8X, R8Y, S
	_ = tx.SignTx(privKey1)
	return tx
}

func handleMiddlewareLog(vLog types.Log, accountTree *models.AccountTree) {
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
		fmt.Println("Handling event eDepositRegister")
		events, err := middlewareContractAbi.Unpack(utils.NameDepositRegister, vLog.Data)
		if err != nil {
			fmt.Println("error Unpack middleware event eDepositRegister")
			log.Fatal(err)
		}
		DepositRegisterTxs = append(DepositRegisterTxs, &models.Transaction{
			FromX:  events[0].([]byte),
			FromY:  events[1].([]byte),
			ToX:    events[2].([]byte),
			ToY:    events[3].([]byte),
			Amount: events[4].(*big.Int),
			R8X:    events[5].([]byte),
			R8Y:    events[6].([]byte),
			S:      events[7].([]byte),
		})
		if len(DepositRegisterTxs) == utils.RollupSize {
			fmt.Println("ROLLING UP ...")
			Rollup(accountTree, DepositRegisterTxs)

		}
	default:
		fmt.Println("error: not found event")
	}
}

// Rollup is a function to update account tree
// -
func Rollup(accountTree *models.AccountTree, txs []*models.Transaction) *models.DepositRegisterProof {
	oldAccountRoot := accountTree.GetRoot()
	accounts := models.ToListAccounts(txs)
	newAccountTree := models.NewTreeFromAccounts(accounts)

	// Verify signature
	for _, tx := range txs {
		valid := tx.VerifyTx()
		if !valid {
			fmt.Println("error: tx invalid, wrong signature")
			return nil
		}
	}

	// Find empty tree node
	emptyNodeIndex := accountTree.FindEmptyNodeIndex()
	if emptyNodeIndex == -1 {
		fmt.Println("error: tree is full")
		return nil
	}
	emptyNodeProof, emptyNodeProofPos := accountTree.GetProof(emptyNodeIndex)

	// Update new account tree to main tree
	accountTree.AddSubTree(emptyNodeIndex, newAccountTree)
	accountTree.ReHashing(emptyNodeIndex)
	newAccountRoot := accountTree.GetRoot()

	// print file json
	finalProof := &models.DepositRegisterProof{
		OldAccountRoot:    oldAccountRoot,
		NewAccountRoot:    newAccountRoot,
		ProofEmptyTree:    emptyNodeProof,
		ProofPosEmptyTree: emptyNodeProofPos,
		DepositRegisterTx: nil,
	}
	errJson := utils.PrintJson(finalProof)
	if errJson != nil {
		fmt.Println("error print json")
		log.Fatal(errJson)
	}
	return nil
}

func subscribeLogs(middlewareAddress common.Address, client *ethclient.Client) (ethereum.Subscription, chan types.Log, error) {
	// subscribe to log
	query := ethereum.FilterQuery{
		Addresses: []common.Address{middlewareAddress},
	}
	logs := make(chan types.Log)

	sub, err := client.SubscribeFilterLogs(context.Background(), query, logs)
	if err != nil {
		fmt.Println("error subscribe filter logs")
		log.Fatal(err)
		return nil, nil, err
	}
	return sub, logs, err
}
