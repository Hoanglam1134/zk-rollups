package main

import (
	"encoding/json"
	"fmt"
	bn254 "github.com/consensys/gnark-crypto/ecc/bn254/fr/mimc"
	"golang.org/x/exp/maps"
	"math/big"
	"os"
)

type AddressesFile struct {
	Addresses   map[string]string `json:"addresses"`
	PrivateKeys map[string]string `json:"private_keys"`
}

func test_readjson() {
	filePath := "test_fold/accounts.json"
	data, err := os.ReadFile(filePath)
	if err != nil {
		fmt.Println("readfile err: ", err)
		os.Exit(1)
	}
	var addressesFile AddressesFile
	err = json.Unmarshal(data, &addressesFile)
	if err != nil {
		fmt.Println("Unmarshal err: ", err)
		os.Exit(1)
	}

	pubKeys := maps.Keys(addressesFile.Addresses)
	fmt.Println(pubKeys[0])
}

func mimcHash(data []byte) string {
	f := bn254.NewMiMC()
	hash := f.Sum(data)
	hashStr := fmt.Sprintf("%x", hash)
	fmt.Println("hex: ", hashStr)
	hashInt := big.NewInt(0).SetBytes(hash)
	return hashInt.String()
}

func main() {
	hashString := mimcHash([]byte("hello"))
	fmt.Println(hashString)
}
