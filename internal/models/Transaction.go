package models

import (
	"log"
	"math/big"
	"zk-rollups/utils"

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

type TransactionTree struct {
	Node []*big.Int
	Arr  []*Transaction
}

func (tx *Transaction) GetHash() *big.Int {
	ret, err := mimc7.Hash(
		[]*big.Int{tx.FromX,
			tx.FromY,
			tx.ToX,
			tx.ToY,
			tx.Amount,
			tx.Nonce}, big.NewInt(0),
	)

	if err != nil {
		log.Fatal("[Transaction.GetHash] of Transaction type is error")
		return nil
	}

	return ret
}

func (tx *Transaction) SignTx(privateKey babyjub.PrivateKey) *babyjub.Signature {
	signature := privateKey.SignMimc7(tx.GetHash())
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
	return edDsaPubkeyFrom.VerifyMimc7(tx.GetHash(), &signature)
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

func (txTree *TransactionTree) GetRoot() *big.Int {
	return txTree.Node[0]
}

func (txTree *TransactionTree) GetProof(idx int) ([]*big.Int, []int) {
	proof := make([]*big.Int, 0)
	proofPos := make([]int, 0)
	for idx > 0 {
		if idx%2 == 0 {
			proof = append(proof, txTree.Node[idx-1])
			proofPos = append(proofPos, 0)
		} else {
			proof = append(proof, txTree.Node[idx+1])
			proofPos = append(proofPos, 1)
		}
		idx = (idx - 1) / 2
	}
	return proof, proofPos
}

func (txTree *TransactionTree) GetProofAll() ([][]*big.Int, [][]int) {
	proofs := make([][]*big.Int, 0)
	proofsPos := make([][]int, 0)
	for i := 3; i < 3+len(txTree.Node); i++ { // index must be start at 3 (leaf node index)
		proof, proofPos := txTree.GetProof(i)
		proofs = append(proofs, proof)
		proofsPos = append(proofsPos, proofPos)
	}
	return proofs, proofsPos
}

func NewTreeFromTransactions(txs []*Transaction) *TransactionTree {
	transactionSize := len(txs)

	// create a new tree from transactions
	tree := &TransactionTree{
		Node: make([]*big.Int, 2*transactionSize-1), // 2n-1
		Arr:  make([]*Transaction, transactionSize),
	}

	for i := 0; i < transactionSize; i++ {
		indexNumber := i + transactionSize - 1 // 0 + 4 - 1 = 3
		tree.Arr[i] = txs[i]
		tree.Node[indexNumber] = tree.Arr[i].GetHash()
	}
	// Update the hash of the node from upper layer to the root
	// we start from the end of the second last layer: 2^(second depth) - 2 = 2^2 - 2 = 2
	for index := transactionSize - 2; index >= 0; index-- {
		tree.Node[index] = utils.MultiMiMC7BigInt(
			tree.Node[index*2+1],
			tree.Node[index*2+2],
		)
	}
	return tree
}
