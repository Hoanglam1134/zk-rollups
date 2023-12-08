package main

import (
	"crypto/sha256"
	"fmt"
	"math/rand"
	"strconv"
)

type Node struct {
	hash []byte
}

const HEIGHT = 4

type Account struct {
	Index   int
	Address []byte
	Nonce   []byte
	Balance int // Not sure what to put here though
}

func MiMCHash(a []byte, b []byte) []byte {
	data := make([]byte, 0)
	data = append(data, a...)
	data = append(data, b...)
	// f := sha256.Sum()
	hash := sha256.Sum256(data)
	return hash[:]
}

func (a *Account) GetHash() []byte {
	// f := bn254.MiMC()
	if a == nil {
		hash_zero := sha256.Sum256([]byte{0})

		return hash_zero[:]
	}

	data := make([]byte, 0)
	data = append(data, []byte(strconv.Itoa(a.Index))...)
	data = append(data, a.Address...)
	data = append(data, a.Nonce...)
	data = append(data, []byte(strconv.Itoa(a.Balance))...)

	hash := sha256.Sum256(data)

	return hash[:]
}

type AccountTree struct {
	Arr  [1 << (HEIGHT - 1)]*Account
	Tree [(1 << (HEIGHT)) - 1]Node
}

func NewAccountTree() *AccountTree {
	tree := new(AccountTree)
	// Create the last layer of the tree
	for i := 0; i < (1 << (HEIGHT - 1)); i++ {
		index_number := i + (1 << (HEIGHT - 1)) - 1
		tree.Arr[i] = &Account{
			Index:   i,
			Address: []byte(fmt.Sprintf("This is index: %d", i)),
			Nonce:   []byte(fmt.Sprintf("%d", rand.Intn(1<<20))),
			Balance: 0,
		}

		tree.Tree[index_number] = Node{tree.Arr[i].GetHash()}
	}

	// Update the hash of the node from upper layer to the root
	for index := (1 << (HEIGHT - 1)) - 2; index >= 0; index-- {
		tree.Tree[index] = Node{MiMCHash(tree.Tree[index*2+1].hash, tree.Tree[index*2+2].hash)}
	}
	return tree
}

// this one for later
// func (a Account) acceptSendTx(amount int) []byte {
// 	return make([]byte, 0)
// }

func testTree() {
	tree := NewAccountTree()

	for i := 0; i < (1<<(HEIGHT) - 1); i++ {
		fmt.Printf("Hex: %x\n", tree.Tree[i].hash)
	}

}
