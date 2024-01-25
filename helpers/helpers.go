package helpers

import (
	"context"
	"crypto/ecdsa"
	"crypto/rand"
	"encoding/json"
	"fmt"
	"log"
	"math/big"
	"os"
	"zk-rollups/internal/models"

	"github.com/ethereum/go-ethereum/accounts/abi/bind"
	"github.com/ethereum/go-ethereum/crypto"
	"github.com/ethereum/go-ethereum/ethclient"
	"github.com/iden3/go-iden3-crypto/babyjub"
	"golang.org/x/exp/maps"
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

func LoadAuth(addressesFile AddressesFile, client *ethclient.Client, index int) (*bind.TransactOpts, error) {
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
	auth.Value = big.NewInt(int64(0)) // in wei
	auth.GasLimit = uint64(3000000)   // in units
	auth.GasPrice = gasPrice          // in wei
	if err != nil {
		return nil, err
	}
	return auth, nil
}

func DebugCreateTx(amount int) models.Transaction {
	privKey1 := babyjub.NewRandPrivKey()
	privKey2 := babyjub.NewRandPrivKey()
	edDsaPubkeyFrom := privKey1.Public()
	edDsaPubkeyTo := privKey2.Public()

	upper_bound, _ := new(big.Int).SetString("69696969", 10)

	nonce_number, _ := rand.Int(rand.Reader, upper_bound)
	_ = nonce_number
	tx := models.Transaction{
		FromX:  edDsaPubkeyFrom.Point().X,
		FromY:  edDsaPubkeyFrom.Point().Y,
		ToX:    edDsaPubkeyTo.Point().X,
		ToY:    edDsaPubkeyTo.Point().Y,
		Amount: big.NewInt(int64(0)),
		Nonce:  big.NewInt(0), //nonce_number,
	}

	// sign Tx, also set new values to R8X, R8Y, S
	_ = tx.SignTx(privKey1)
	return tx
}
