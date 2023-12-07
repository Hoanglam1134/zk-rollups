package main

import (
	"context"
	"crypto/ecdsa"
	"encoding/json"
	"fmt"
	"github.com/ethereum/go-ethereum/accounts/abi/bind"
	"github.com/ethereum/go-ethereum/crypto"
	"github.com/ethereum/go-ethereum/ethclient"
	"golang.org/x/exp/maps"
	"log"
	"math/big"
	"os"
	"zk-rollups/contracts/middleware_contract"
	"zk-rollups/contracts/mimc_contract"
)

type AddressesFile struct {
	AddressesMap   map[string]string `json:"addresses"`
	PrivateKeysMap map[string]string `json:"private_keys"`
}

func DeploySmartContract(client *ethclient.Client) (err error) {
	// get chain id
	chainID, err := client.ChainID(context.Background())
	if err != nil {
		return err
	}

	// load user 0 from json file to deploy contracts
	filePath := "contracts/file_gen/accounts.json"
	data, err := os.ReadFile(filePath)
	if err != nil {
		return err
	}
	var addressesFile AddressesFile
	err = json.Unmarshal(data, &addressesFile)
	if err != nil {
		return err
	}
	pubKeys := maps.Keys(addressesFile.AddressesMap)
	userZeroPubKey := pubKeys[0]
	privateKeyHex := addressesFile.PrivateKeysMap[userZeroPubKey][2:]
	privateKey, err := crypto.HexToECDSA(privateKeyHex)
	if err != nil {
		fmt.Println("error HexToECDSA private key")
		log.Fatal(err)
	}

	publicKey := privateKey.Public()

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
	auth, err := bind.NewKeyedTransactorWithChainID(privateKey, chainID)
	auth.Nonce = big.NewInt(int64(nonce))
	auth.Value = big.NewInt(0)      // in wei
	auth.GasLimit = uint64(3000000) // in units
	auth.GasPrice = gasPrice        // in wei
	if err != nil {
		return err
	}

	// deploy contracts
	// Mimc contract
	mimcAddress, mimcTx, mimcInstance, err := mimc_contract.DeployMimcContract(auth, client)
	if err != nil {
		fmt.Println("error deploy contracts")
		log.Fatal(err)
	}
	fmt.Println(mimcAddress.Hex())
	fmt.Println(mimcTx.Hash().Hex())

	// Middleware contract
	initialAccountRoot := [32]byte{}
	middlewareAddress, middTx, middlewareInstance, err := middleware_contract.DeployMiddlewareContract(auth, client, mimcAddress, initialAccountRoot)
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println(middlewareAddress.Hex())
	fmt.Println(middTx.Hash().Hex())

	// subscribe to log

	_ = mimcInstance
	_ = middlewareInstance
	return nil
}
