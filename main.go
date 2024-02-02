package main

import (
	"fmt"
	"github.com/ethereum/go-ethereum/common"
	"github.com/iden3/go-iden3-crypto/babyjub"
)

func main() {
	// Replace with your actual private key hex string
	privateKeyHexString := "0x6554e066777e743bbcf39bdbbea07c66a4e9b59ba78b6ba44cad8505651b69cd"

	// Convert hex string to bytes
	privateKeyBytes := common.FromHex(privateKeyHexString)

	// Create PrivateKey from bytes
	var privateKey babyjub.PrivateKey
	copy(privateKey[:], privateKeyBytes)

	// Get PublicKey from PrivateKey
	publicKey := privateKey.Public()

	fmt.Println("PublicKey:", publicKey)
}
