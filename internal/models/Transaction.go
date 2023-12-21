package models

import (
	"fmt"
	"github.com/iden3/go-iden3-crypto/babyjub"
	"github.com/iden3/go-iden3-crypto/mimc7"
	"math/big"
)

type Transaction struct {
	FromX  *big.Int
	FromY  *big.Int
	ToX    *big.Int
	ToY    *big.Int
	Amount *big.Int
	R8X    *big.Int
	R8Y    *big.Int
	S      *big.Int
}

type TransactionEvent struct {
	FromX  [32]byte
	FromY  [32]byte
	ToX    [32]byte
	ToY    [32]byte
	Amount *big.Int
	R8X    [32]byte
	R8Y    [32]byte
	S      [32]byte
}

func MiMCHash(inputs ...[]byte) *big.Int {
	res := make([]byte, 0)
	fmt.Println(inputs)
	for _, x := range inputs {
		res = append(res, x...)
	}
	return mimc7.HashBytes(res)
}

func (tx *Transaction) HashMimc() *big.Int {
	return MiMCHash(
		tx.FromX.Bytes(),
		tx.FromY.Bytes(),
		tx.ToX.Bytes(),
		tx.ToY.Bytes(),
		tx.Amount.Bytes(),
	)
}

func (tx *Transaction) SignTx(privateKey babyjub.PrivateKey) *babyjub.Signature {
	signature := privateKey.SignMimc7(tx.HashMimc())
	tx.R8X = signature.R8.X
	tx.R8Y = signature.R8.Y
	tx.S = signature.S
	return signature
}
