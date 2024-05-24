package service

import (
	"fmt"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/crypto"
	"github.com/iden3/go-iden3-crypto/babyjub"
	"testing"
)

func TestFun(t *testing.T) {
	fmt.Println("Test running ...")
	private := "490b472e43b6ce64f77b093112bdb26119b9a6fae1b9d63eb7c35905564bfc56"
	address := "0xa55ec0b02dd1e1d79017649d2b63316dff20500e"

	// ecdsa
	ecdsaPrivateKey, err := crypto.HexToECDSA(private)
	if err != nil {
		t.Error(err)
	}
	ecdsaPublicKey := ecdsaPrivateKey.PublicKey
	ecdsaAddress := crypto.PubkeyToAddress(ecdsaPublicKey)
	fmt.Println("ecdsaAddress: ", ecdsaAddress.Hex())
	fmt.Println(address)

	// eddsa
	eddsaPrivateKeyHex := common.FromHex(private)
	var eddsaPrivateKey babyjub.PrivateKey
	copy(eddsaPrivateKey[:], eddsaPrivateKeyHex)
	eddsaPublicKey := eddsaPrivateKey.Public()
	fmt.Println("ecdsaPublicKey: ", ecdsaPublicKey.X, ecdsaPublicKey.Y)
	fmt.Println("eddsaPublicKey: ", eddsaPublicKey.X, eddsaPublicKey.Y)
}
