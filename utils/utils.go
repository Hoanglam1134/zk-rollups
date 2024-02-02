package utils

import (
	"encoding/json"
	"fmt"
	"github.com/ethereum/go-ethereum/common"
	"github.com/iden3/go-iden3-crypto/babyjub"
	"math/big"
	"os"

	"github.com/iden3/go-iden3-crypto/mimc7"
)

// ConvertToBytes32 convert []byte to [32]byte
// this function also add padding to the end of []byte if it is not enough
// TODO: need check valid
func ConvertToBytes32(data []byte) [32]byte {
	var src [32]byte
	copy(src[:], append(data, make([]byte, 32-len(data))...))
	return src
}

func ConvertToBytes(data [32]byte) []byte {
	return data[:]
}

// MiMCHash calculate hash of inputs
// return hash as *big.Int
func MiMCHash(inputs ...[]byte) *big.Int {
	res := make([]byte, 0)
	for _, x := range inputs {
		res = append(res, x...)
	}
	return mimc7.HashBytes(res)
}

// NguyenHiu's code
func MultiMiMC7BigInt(input ...*big.Int) *big.Int {
	// key is zero
	ret, err := mimc7.Hash(input, big.NewInt(0))
	if err != nil {
		fmt.Printf("multi mimc7 hash is error: %v\n", err)
		return big.NewInt(0)
	}
	return ret
}

func ByteToBigInt(src []byte) *big.Int {
	return new(big.Int).SetBytes(src[:])
}

func ByteEqual(a, b []byte) bool {
	if len(a) != len(b) {
		return false
	}
	for index, value := range a {
		if value != b[index] {
			return false
		}
	}
	return true
}

func PrintJson(data interface{}) error {
	jsonData, err := json.MarshalIndent(data, "", "  ")
	if err != nil {
		fmt.Println("error marshal json when print")
		return err
	}

	// Write JSON data to a file
	err = os.WriteFile("Input.json", jsonData, 0666)
	if err != nil {
		fmt.Println("Error writing JSON to file:", err)
		return err
	}

	fmt.Println("JSON data written to Input.json")
	return nil
}

func Priv2Pub(privKey string) *babyjub.PublicKey {
	// Convert hex string to bytes
	privateKeyBytes := common.FromHex(privKey)

	// Create PrivateKey from bytes
	var privateKey babyjub.PrivateKey
	copy(privateKey[:], privateKeyBytes)

	return privateKey.Public()
}
