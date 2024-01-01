package models

import (
	"fmt"
	"github.com/iden3/go-iden3-crypto/babyjub"
	"math/big"
	"zk-rollups/utils"
)

type Account struct {
	Index      int
	PubX, PubY []byte
	Nonce      []byte
	Balance    *big.Int
}

// AccountTree is a Merkle tree of accounts
// Default tree height is 4, which can store 2^(4-1) = 8 accounts
// Tree hash value is 2^(4) - 1 = 15, include 8 leaf nodes and 7 internal nodes
type AccountTree struct {
	HashValueZeros [(1 << (utils.TreeHeight)) - 1][]byte
	Node           [(1 << (utils.TreeHeight)) - 1][]byte
	Arr            [1 << (utils.TreeHeight - 1)]*Account
}

type TxTree struct {
	Arr  [1 << (utils.TreeHeight - 1)]*Transaction
	Node [(1 << (utils.TreeHeight)) - 1][]byte
}

//===================Methods===================

func (a *Account) GetHash() []byte {
	var hash []byte
	hash = utils.MiMCHash(
		a.PubX, a.PubY,
		a.Nonce,
		a.Balance.Bytes(),
	).Bytes()
	return hash[:]
}

func (a *Account) GetPubkeyShow() string {
	pk := babyjub.PublicKey{
		X: utils.ByteToBigInt(a.PubX),
		Y: utils.ByteToBigInt(a.PubY),
	}
	return pk.String()
}

// ------------------------------------------------------------------------

func NewAccountTree() *AccountTree {
	tree := new(AccountTree)
	// Create the last layer of the tree
	for i := 0; i < utils.AccountSize; i++ {
		indexNumber := i + utils.AccountSize - 1
		tree.Arr[i] = &Account{
			Index:   0,
			PubX:    []byte{0},
			PubY:    []byte{0},
			Nonce:   []byte{0},
			Balance: big.NewInt(0),
		}
		tree.Node[indexNumber] = tree.Arr[i].GetHash()
	}
	// Update the hash of the node from upper layer to the root
	for index := (1 << (utils.TreeHeight - 1)) - 2; index >= 0; index-- {
		tree.Node[index] = utils.MiMCHash(
			tree.Node[index*2+1],
			tree.Node[index*2+2],
		).Bytes()
		tree.HashValueZeros[index] = tree.Node[index]
	}
	return tree
}

func NewTreeFromAccounts(accounts []*Account) *AccountTree {
	tree := new(AccountTree)
	accountSize := len(accounts)
	// Create the last layer of the tree
	for i := 0; i < accountSize; i++ {
		indexNumber := i + accountSize - 1
		tree.Arr[i] = accounts[i]
		tree.Node[indexNumber] = tree.Arr[i].GetHash()
	}
	// Update the hash of the node from upper layer to the root
	for index := (1 << (utils.TreeHeight - 1)) - 2; index >= 0; index-- {
		tree.Node[index] = utils.MiMCHash(
			tree.Node[index*2+1],
			tree.Node[index*2+2],
		).Bytes()
	}
	return tree
}

func (tree *AccountTree) FindEmptyNodeIndex() int {
	for i := 1; i < len(tree.Node); i++ {
		if utils.ByteEqual(tree.Node[i], tree.HashValueZeros[i]) {
			return i
		}
	}
	return -1
}

// GetProof returns the proof of the Node at index (0-15)
func (tree *AccountTree) GetProof(idx int) ([][]byte, []int) {
	proof := make([][]byte, 0)
	proofPos := make([]int, 0)
	for idx > 0 {
		if idx%2 == 0 {
			proof = append(proof, tree.Node[idx-1])
			proofPos = append(proofPos, 0)
		} else {
			proof = append(proof, tree.Node[idx+1])
			proofPos = append(proofPos, 1)
		}
		idx = (idx - 1) / 2
	}
	return proof, proofPos
}

func (tree *AccountTree) UpdateTree(index int, account *Account) {
	// Update the leaf node
	tree.Arr[index] = account
	tree.Node[index+(1<<utils.TreeHeight)-1] = account.GetHash()
	// Update the hash of the node from upper layer to the root
	for index := (1 << (utils.TreeHeight - 1)) - 2; index >= 0; index-- {
		tree.Node[index] = utils.MiMCHash(
			tree.Node[index*2+1],
			tree.Node[index*2+2],
		).Bytes()
	}
}

func (tree *AccountTree) GetRoot() []byte {
	return tree.Node[0]
}

func (tree *AccountTree) AddSubTree(index int, subTree *AccountTree) {
	// update hash value
	level := 0
	for i := 0; i < len(subTree.Node); i++ {
		// find index of the node in the tree
		// level change when i = 1, 3, 7, 15 => all bit of i is 1
		if i&(i+1) == 0 {
			fmt.Printf("AddSubTree: level = %d, i: %d \n", level, i)
			level += 1
		}
		fmt.Println("AddSubTree: index = ", (index<<level)+i)
		tree.Node[(index<<level)+i] = subTree.Node[i]
		if i == 6 {
			// TODO: hard code here
			break
		}
	}

	// update leaf nodes: accounts
	if index == 2 {
		fmt.Println("AddSubTree: index = 2")
		level = 4
	} else {
		level = 0
	}
	for i, account := range subTree.Arr {
		if account == nil {
			continue
		}
		tree.Arr[i+level] = account
		tree.Arr[i+level].Index = i + level
	}
}

func (tree *AccountTree) PrintTree() {
	for i, hash := range tree.Node {
		fmt.Printf("Node[%d] = %x\n", i, hash)
	}
}

// ReHashing re-hash the tree from index to the root
// it uses the hash value of the node at index and its proof (not yet)
func (tree *AccountTree) ReHashing(index int) {
	for ; index > 0; index-- {
		if index%2 == 0 {
			tree.Node[(index-1)/2] = utils.MiMCHash(
				tree.Node[index-1],
				tree.Node[index],
			).Bytes()
		} else {
			tree.Node[(index-1)/2] = utils.MiMCHash(
				tree.Node[index],
				tree.Node[index+1],
			).Bytes()
		}
		index = (index - 1) / 2
	}
}

// AddTxToAccount add tx to account
// it is used for update tx to an existing account
func (tree *AccountTree) AddTxToAccount(tx *Transaction) int {
	for i, currAcc := range tree.Arr {
		if currAcc == nil {
			continue
		}
		if utils.ByteEqual(currAcc.PubX, tx.ToX) && utils.ByteEqual(currAcc.PubY, tx.ToY) {
			// find the account => update
			fmt.Println("AddTxToAccount: update account")
			fmt.Println("AddTxToAccount: old balance = ", currAcc.Balance.String())
			fmt.Println("AddTxToAccount: tx amount = ", tx.Amount.String())
			tree.Arr[i].Balance.Add(tree.Arr[i].Balance, tx.Amount)
			fmt.Println("AddTxToAccount: new balance 1 = ", currAcc.Balance.String())
			fmt.Println("AddTxToAccount: new balance 2 = ", tree.Arr[i].Balance.String())
			return i
		}
	}
	return -1
}

func (tree *AccountTree) UpdateAccount(acc *Account) int {
	for i, currAcc := range tree.Arr {
		if currAcc == nil {
			continue
		}
		if utils.ByteEqual(currAcc.PubX, acc.PubX) && utils.ByteEqual(currAcc.PubY, acc.PubY) {
			// find the account => update
			tree.Arr[i] = acc
			return i
		}
	}
	return -1
}

//func NewTxTree() *TxTree {
//	tree := new(TxTree)
//	// Create the last layer of the tree
//	for i := 0; i < (1 << (utils.TreeHeight - 1)); i++ {
//		indexNumber := i + (1 << (utils.TreeHeight - 1)) - 1
//		tree.Arr[i] = new(Transaction)
//		tree.Tree[indexNumber] = Node{tree.Arr[i].GetHash()}
//	}
//	// Update the hash of the node from upper layer to the root
//	for index := (1 << (utils.TreeHeight - 1)) - 2; index >= 0; index-- {
//		tree.Tree[index] = Node{
//			hash: utils.MiMCHash(
//				tree.Tree[index*2+1].hash,
//				tree.Tree[index*2+2].hash,
//			).Bytes(),
//		}
//	}
//	return tree
//}
