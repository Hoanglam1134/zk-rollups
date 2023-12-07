package main

import (
	"encoding/json"
	"fmt"
	"golang.org/x/exp/maps"
	"os"
)

type AddressesFile struct {
	Addresses   map[string]string `json:"addresses"`
	PrivateKeys map[string]string `json:"private_keys"`
}

func main() {
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
