package utils

import (
	"encoding/json"
	"fmt"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/crypto"
	"github.com/iden3/go-iden3-crypto/babyjub"
	"github.com/iden3/go-iden3-crypto/mimc7"
	"log"
	"math/big"
	"os"
	"strings"
)

func MultiMiMC7BigInt(input ...*big.Int) *big.Int {
	// key is length of input
	key := len(input)
	ret, err := mimc7.Hash(input, big.NewInt(int64(key)))
	if err != nil {
		fmt.Printf("multi mimc7 hash is error: %v\n", err)
		return big.NewInt(0)
	}
	return ret
}

func PrintJson(data interface{}, fileName string) error {
	jsonData, err := json.MarshalIndent(data, "", "  ")
	if err != nil {
		fmt.Println("error marshal json when print")
		return err
	}

	// Write JSON data to a file
	err = os.WriteFile(fileName, jsonData, 0666)
	if err != nil {
		fmt.Println("Error writing JSON to file:", err)
		return err
	}

	fmt.Println("JSON data written to Input.json")
	return nil
}

func Private2Public(privateKeyInput string) (*babyjub.PublicKey, *babyjub.PrivateKey) {
	// remove 0x from hex string if exist
	if len(privateKeyInput) > 2 && privateKeyInput[:2] == "0x" {
		privateKeyInput = privateKeyInput[2:]
	}

	// Convert hex string to bytes
	privateKeyBytes := common.FromHex(privateKeyInput)

	// Create PrivateKey from bytes
	var privateKey babyjub.PrivateKey
	copy(privateKey[:], privateKeyBytes)

	return privateKey.Public(), &privateKey
}

func ECDSAPrivate2Address(privateKeyInput string) string {
	// remove 0x from hex string if exist
	if len(privateKeyInput) > 2 && privateKeyInput[:2] == "0x" {
		privateKeyInput = privateKeyInput[2:]
	}

	ecdsaPrivateKey, err := crypto.HexToECDSA(privateKeyInput)
	if err != nil {
		log.Fatal(err)
	}
	ecdsaPublicKey := ecdsaPrivateKey.PublicKey
	address := strings.ToLower(crypto.PubkeyToAddress(ecdsaPublicKey).String())
	return address
}
