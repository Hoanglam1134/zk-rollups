package models

import (
	"fmt"
	"math/big"
	"zk-rollups/utils"

	"github.com/iden3/go-iden3-crypto/babyjub"
)

type Account struct {
	Index      int
	PubX, PubY *big.Int
	Nonce      *big.Int
	Balance    *big.Int
}

// AccountTree is a Merkle tree of accounts
// Default tree height is 4, which can store 2^(4-1) = 8 accounts
// Tree hash value is 2^(4) - 1 = 15, include 8 leaf nodes and 7 internal nodes

type AccountTree struct {
	HashValueZeros []*big.Int // utils.BigTreeHeight
	Node           []*big.Int // (1 << (utils.BigTreeHeight)) - 1
	Arr            []*Account // 1 << (utils.BigTreeHeight - 1)
}

//===================Methods===================

func (a *Account) GetHash() *big.Int {
	return utils.MultiMiMC7BigInt(a.PubX, a.PubY, a.Nonce, a.Balance)
}

func (a *Account) GetPubKeyShow() string {
	pk := babyjub.PublicKey{
		X: a.PubX,
		Y: a.PubY,
	}
	return pk.String()
}

// NewAccountTree creates a new AccountTree with the default height
func NewAccountTree() *AccountTree {
	tree := new(AccountTree)
	// We can change the height of the Tree here
	tree.HashValueZeros = make([]*big.Int, utils.BigTreeHeight) // we start counting from 0
	tree.Node = make([]*big.Int, (1<<(utils.BigTreeHeight))-1)
	tree.Arr = make([]*Account, 1<<(utils.BigTreeHeight-1))

	// Create the last layer of the tree
	bigInZero := big.NewInt(0)
	for i := 0; i < utils.AccountSize; i++ {
		indexNumber := i + utils.AccountSize - 1
		tree.Arr[i] = &Account{
			Index:   -1,
			PubX:    bigInZero,
			PubY:    bigInZero,
			Nonce:   bigInZero,
			Balance: bigInZero,
		}
		tree.Node[indexNumber] = tree.Arr[i].GetHash()
	}

	// Update the hash of the node from upper layer to the root
	tree.HashValueZeros[utils.BigTreeHeight-1] = tree.Arr[utils.AccountSize-1].GetHash()
	for index := utils.BigTreeHeight - 2; index >= 0; index-- {
		tree.HashValueZeros[index] = utils.MultiMiMC7BigInt(tree.HashValueZeros[index+1], tree.HashValueZeros[index+1])
	}

	for index := (utils.AccountSize) - 2; index >= 0; index-- {
		tree.Node[index] = utils.MultiMiMC7BigInt(tree.Node[index*2+1], tree.Node[index*2+2])
	}
	return tree
}

func NewTreeFromAccounts(accounts []*Account) *AccountTree {
	accountSize := len(accounts)
	tree := new(AccountTree)

	// We can change the height of the Tree here depend on the number of accounts from the input were given
	// --> find smallest H such that 2**(H - 1) >= len(accounts) ?
	tree.Node = make([]*big.Int, 2*accountSize-1)
	tree.Arr = make([]*Account, accountSize)

	for i := 0; i < accountSize; i++ {
		indexNumber := i + accountSize - 1 // 0 + 4 - 1 = 3
		tree.Arr[i] = accounts[i]
		tree.Node[indexNumber] = tree.Arr[i].GetHash()
	}
	// Update the hash of the node from upper layer to the root
	// we start from the end of the second last layer: 2^(second depth) - 2 = 2^2 - 2 = 2
	for index := utils.RollupSize - 2; index >= 0; index-- {
		tree.Node[index] = utils.MultiMiMC7BigInt(
			tree.Node[index*2+1],
			tree.Node[index*2+2],
		)
	}
	return tree
}

// FindEmptyNodeIndex ...
// TODO: update this into finding more suitable position to add near the leaf-level
func (tree *AccountTree) FindEmptyNodeIndex() int {
	// Since we already know the fixed height of the register tree, we can jump directly to that level.
	index := 0
	for i := 1; i < len(tree.Node); i++ {
		if (i & (i + 1)) == 0 {
			index++
		}
		if tree.Node[i].Cmp(tree.HashValueZeros[index]) == 0 {
			return i
		}
	}
	return -1
}

// GetProof returns the proof of the Node at index (0-15)
func (tree *AccountTree) GetProof(idx int) ([]*big.Int, []int) {
	proof := make([]*big.Int, 0)
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
	tree.Node[index+(1<<utils.RollupTreeHeight)-1] = account.GetHash()
	// Update the hash of the node from upper layer to the root
	for index := (1 << (utils.RollupTreeHeight - 1)) - 2; index >= 0; index-- {
		tree.Node[index] = utils.MultiMiMC7BigInt(
			tree.Node[index*2+1],
			tree.Node[index*2+2],
		)
	}
}

func (tree *AccountTree) GetRoot() *big.Int {
	return tree.Node[0]
}

func (tree *AccountTree) AddSubTree(index int, subTree *AccountTree) {
	// update hash value
	level := 0
	// index passed in as value 1, we want to use that value to navigate and update the respective node
	// make a complete binary tree index from 0
	/**
						0
			1 						2
		3			4			5			6
	7		8	9		10	11		12	13		14
	*/

	for i := 0; i < len(subTree.Node); i++ {
		// find index of the node in the tree
		// level change when i = 1, 3, 7, 15 => all bit of i is 1
		fmt.Println("AddSubTree: index = ", (index<<level)+i)
		tree.Node[(index<<level)+i] = subTree.Node[i]
		if i > 0 && i&(i+1) == 0 {
			fmt.Printf("AddSubTree: level = %d, i: %d \n", level, i)
			level += 1
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
// only rehash in the path from the leaf to the root, not the whole tree
func (tree *AccountTree) ReHashing(index int) {
	for index > 0 {
		if index%2 == 0 {
			tree.Node[(index-1)/2] = utils.MultiMiMC7BigInt(
				tree.Node[index-1],
				tree.Node[index],
			)
		} else {
			tree.Node[(index-1)/2] = utils.MultiMiMC7BigInt(
				tree.Node[index],
				tree.Node[index+1],
			)
		}
		index = (index - 1) / 2
	}
}

// AddBalanceToAccount add tx to account
// it is used for update tx to an existing account
func (tree *AccountTree) AddBalanceToAccount(pubX, pubY *big.Int, amount *big.Int, isIncrease bool) int {
	for i, currAcc := range tree.Arr {
		if currAcc == nil {
			continue
		}
		// finding account
		if currAcc.PubX.Cmp(pubX) == 0 && currAcc.PubY.Cmp(pubY) == 0 {
			// found the account => update
			fmt.Println("AddTxToAccount: found account, old balance = ", tree.Arr[i].Balance.String())
			fmt.Println("AddTxToAccount: tx amount = ", amount.String())
			if isIncrease {
				tree.Arr[i].Balance.Add(tree.Arr[i].Balance, amount)
			} else {
				// in case of decrease, we need to check if the balance is enough
				if tree.Arr[i].Balance.Cmp(amount) == utils.MinusOne {
					fmt.Println("[AddTxToAccount] case sub: balance is not enough")
					return utils.MinusOne
				}
				tree.Arr[i].Balance.Sub(tree.Arr[i].Balance, amount)
			}
			fmt.Println("AddTxToAccount: new balance = ", tree.Arr[i].Balance.String())

			// rehash the tree from the leaf to the root
			tree.ReHashing(i + (1 << (utils.BigTreeHeight - 1)) - 1) // i + 2^15 - 1 = 32767 + i

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
		if currAcc.PubX.Cmp(acc.PubX) == 0 && currAcc.PubY.Cmp(acc.PubY) == 0 {
			// find the account => update
			tree.Arr[i] = acc
			return i
		}
	}
	return -1
}

func CreateNewAccount(privateKeyInput string) (*Account, babyjub.PrivateKey) {
	publicKey, privateKey := utils.Private2Public(privateKeyInput)
	return &Account{
		Index:   -1, // which means this account is not in the tree (or free account, not set up yet)
		PubX:    publicKey.Point().X,
		PubY:    publicKey.Point().Y,
		Nonce:   big.NewInt(0),
		Balance: big.NewInt(0),
	}, *privateKey
}
