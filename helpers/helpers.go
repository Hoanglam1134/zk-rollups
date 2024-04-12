package helpers

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
	"zk-rollups/utils"
)

type AddressesFile struct {
	AddressesMap   map[string]string `json:"addresses"`    // map address to address
	PrivateKeysMap map[string]string `json:"private_keys"` // map address to private key
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

type LoadAccountsOption struct {
	AddressesFile AddressesFile
	Index         int32
	PrivateKey    string
}

func LoadAuth(client *ethclient.Client, option LoadAccountsOption) (*bind.TransactOpts, error) {
	// get chain id
	chainID, err := client.ChainID(context.Background())
	if err != nil {
		return nil, err
	}

	privateKey := option.PrivateKey

	if option.PrivateKey == utils.EmptyString {
		// if PrivateKey is empty, use index to set private key
		pubKeys := maps.Keys(option.AddressesFile.AddressesMap)
		userPubKey := pubKeys[option.Index]
		privateKey = option.AddressesFile.PrivateKeysMap[userPubKey]
	}

	// remove 0x if it exists
	if len(privateKey) > utils.TwoNumber && privateKey[:2] == "0x" {
		privateKey = privateKey[2:]
	}

	privateKeyECDSA, err := crypto.HexToECDSA(privateKey)
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
	auth.Value = big.NewInt(int64(0)) // in wei
	auth.GasLimit = uint64(3000000)   // in units
	auth.GasPrice = gasPrice          // in wei
	if err != nil {
		return nil, err
	}
	return auth, nil
}
