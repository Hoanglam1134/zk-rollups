package models

//
//import (
//	"fmt"
//	"math/big"
//)
//
//type Node struct {
//	hash []byte
//}
//
//const HEIGHT = 4
//
//// single struct
//// ------------------------------------------------------------------------
//type Account struct {
//	Index      int
//	PubX, PubY []byte
//	Nonce      []byte
//	Balance    int // Not sure what to put here though
//}
//
//type AccountTree struct {
//	Arr  [1 << (HEIGHT - 1)]*Account
//	Tree [(1 << (HEIGHT)) - 1]Node
//}
//
//type TxTree struct {
//	Arr  [1 << (HEIGHT - 1)]*Transaction
//	Tree [(1 << (HEIGHT)) - 1]Node
//}
//
//// ------------------------------------------------------------------------
//
//// new MỉMC Hash
//// Beed atleast one byte to work properly, or else we will get empty result
////func MiMCHash(datas ...[]byte) []byte {
////	res := make([]byte, 0)
////	fmt.Println(datas)
////	for _, x := range datas {
////		res = append(res, x...)
////	}
////	res = mimc7.HashBytes(res).Bytes()
////	return res[:]
////}
//
//// -- Method
//
//func (a *Account) GetHash() []byte {
//	var hash []byte
//	if a == nil {
//		hash = MiMCHash([]byte{0})
//
//	} else {
//		hash = MiMCHash(
//			// []byte(strconv.Itoa(a.Index)), // old way to change from int to byte
//			big.NewInt(int64(a.Index)).Bytes(),
//			a.PubX, a.PubY,
//			a.Nonce,
//			big.NewInt(int64(a.Balance)).Bytes(),
//		)
//	}
//	return hash[:]
//}
//
//func (tx *Transaction) GetHash() []byte {
//	var hash []byte
//	if tx == nil {
//		hash = MiMCHash([]byte{0})
//
//	} else {
//		hash = MiMCHash(
//			// []byte(strconv.Itoa(a.Index)), // old way to change from int to byte
//			tx.FromX, tx.FromY,
//			tx.ToX, tx.ToY,
//			tx.Nonce,
//			big.NewInt(tx.Amount).Bytes(),
//			tx.R8x, tx.R8y,
//			tx.S,
//		)
//	}
//	return hash[:]
//}
//
//// ------------------------------------------------------------------------
//
//func NewAccountTree() *AccountTree {
//	tree := new(AccountTree)
//	// Create the last layer of the tree
//	for i := 0; i < (1 << (HEIGHT - 1)); i++ {
//		index_number := i + (1 << (HEIGHT - 1)) - 1
//		tree.Arr[i] = &Account{
//			Index:   0,
//			PubX:    []byte{0},
//			PubY:    []byte{0},
//			Nonce:   []byte{0},
//			Balance: 0,
//		}
//		tree.Tree[index_number] = Node{tree.Arr[i].GetHash()}
//	}
//	// Update the hash of the node from upper layer to the root
//	for index := (1 << (HEIGHT - 1)) - 2; index >= 0; index-- {
//		tree.Tree[index] = Node{
//			hash: MiMCHash(
//				tree.Tree[index*2+1].hash,
//				tree.Tree[index*2+2].hash,
//			),
//		}
//	}
//	return tree
//}
//
//func NewTxTree() *TxTree {
//	tree := new(TxTree)
//	// Create the last layer of the tree
//	for i := 0; i < (1 << (HEIGHT - 1)); i++ {
//		index_number := i + (1 << (HEIGHT - 1)) - 1
//		tree.Arr[i] = new(Transaction)
//		tree.Tree[index_number] = Node{tree.Arr[i].GetHash()}
//	}
//	// Update the hash of the node from upper layer to the root
//	for index := (1 << (HEIGHT - 1)) - 2; index >= 0; index-- {
//		tree.Tree[index] = Node{
//			hash: MiMCHash(
//				tree.Tree[index*2+1].hash,
//				tree.Tree[index*2+2].hash,
//			),
//		}
//	}
//	return tree
//}
//
//func NewTx(fromX, fromY, toX, toY, nonce []byte, amount int64, r8x, r8y, s []byte) *Transaction {
//	return &Transaction{
//		FromX:  fromX,
//		FromY:  fromY,
//		ToX:    toX,
//		ToY:    toY,
//		Nonce:  nonce,
//		Amount: amount,
//		R8x:    r8x,
//		R8y:    r8y,
//		S:      s,
//	}
//}
//
//func main() {
//	tree := NewAccountTree()
//
//	for i := 0; i < (1<<(HEIGHT) - 1); i++ {
//		fmt.Printf("Hex: %x\n", tree.Tree[i].hash)
//	}
//
//}
