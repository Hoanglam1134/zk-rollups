package models

import (
	"log"
	"math/big"

	"github.com/iden3/go-iden3-crypto/babyjub"
	"github.com/iden3/go-iden3-crypto/mimc7"
)

type Transaction struct {
	FromX  *big.Int
	FromY  *big.Int
	ToX    *big.Int
	ToY    *big.Int
	Amount *big.Int
	Nonce  *big.Int
	R8X    *big.Int
	R8Y    *big.Int
	S      *big.Int
}

func (tx *Transaction) HashMimc() *big.Int {
	ret, err := mimc7.Hash(
		[]*big.Int{tx.FromX,
			tx.FromY,
			tx.ToX,
			tx.ToY,
			tx.Amount,
			tx.Nonce}, big.NewInt(0),
	)

	if err != nil {
		log.Fatal("HashMimc() of Transaction type is error")
		return big.NewInt(0)
	}

	return ret
}

func (tx *Transaction) SignTx(privateKey babyjub.PrivateKey) *babyjub.Signature {
	signature := privateKey.SignMimc7(tx.HashMimc())
	tx.R8X = signature.R8.X
	tx.R8Y = signature.R8.Y
	tx.S = signature.S
	return signature
}

func (tx *Transaction) VerifyTx() bool {
	// verify signature
	edDsaPubkeyFrom := babyjub.PublicKey{
		X: tx.FromX,
		Y: tx.FromY,
	}

	signature := babyjub.Signature{
		R8: &babyjub.Point{
			X: tx.R8X,
			Y: tx.R8Y,
		},
		S: tx.S,
	}

	// TODO: improve this to reduce using hashMimc()
	return edDsaPubkeyFrom.VerifyMimc7(tx.HashMimc(), &signature)
}

// ToListAccounts convert list of transactions to list of accounts
// Used to create a list of new accounts
func ToListAccounts(txs []*Transaction) []*Account {
	accounts := make([]*Account, len(txs))
	for i, tx := range txs {
		accounts[i] = &Account{
			// -1 means this account is not in the tree
			Index:   -1,
			PubX:    tx.ToX,
			PubY:    tx.ToY,
			Nonce:   tx.Nonce,
			Balance: tx.Amount,
		}
	}
	return accounts
}
