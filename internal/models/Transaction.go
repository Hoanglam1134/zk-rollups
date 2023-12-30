package models

import (
	"github.com/iden3/go-iden3-crypto/babyjub"
	"math/big"
	"zk-rollups/utils"
)

type Transaction struct {
	FromX  []byte
	FromY  []byte
	ToX    []byte
	ToY    []byte
	Amount *big.Int
	Nonce  []byte
	R8X    []byte
	R8Y    []byte
	S      []byte
}

func (tx *Transaction) HashMimc() *big.Int {
	return utils.MiMCHash(
		tx.FromX,
		tx.FromY,
		tx.ToX,
		tx.ToY,
		tx.Amount.Bytes(),
		tx.Nonce,
	)
}

func (tx *Transaction) SignTx(privateKey babyjub.PrivateKey) *babyjub.Signature {
	signature := privateKey.SignMimc7(tx.HashMimc())
	tx.R8X = signature.R8.X.Bytes()
	tx.R8Y = signature.R8.Y.Bytes()
	tx.S = signature.S.Bytes()
	return signature
}

func (tx *Transaction) VerifyTx() bool {
	// verify signature
	edDsaPubkeyFrom := babyjub.PublicKey{
		X: utils.ByteToBigInt(tx.FromX),
		Y: utils.ByteToBigInt(tx.FromY),
	}

	signature := babyjub.Signature{
		R8: &babyjub.Point{
			X: utils.ByteToBigInt(tx.R8X),
			Y: utils.ByteToBigInt(tx.R8Y),
		},
		S: utils.ByteToBigInt(tx.S),
	}

	// TODO: improve this to reduce using hashMimc()
	return edDsaPubkeyFrom.VerifyMimc7(tx.HashMimc(), &signature)
}

// ToListAccounts convert list of transactions to list of accounts
// Used to create a list of new accounts
func ToListAccounts(txs []*Transaction) []*Account {
	accounts := make([]*Account, len(txs))
	for _, tx := range txs {
		accounts = append(accounts, &Account{
			// -1 means this account is not in the tree
			Index: -1,
			PubX:  tx.FromX,
			PubY:  tx.FromY,
			Nonce: tx.Nonce,
		})
	}
	return accounts
}
