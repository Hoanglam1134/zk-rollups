package models

import "math/big"

type DepositRegisterProof struct {
	OldAccountRoot    *big.Int
	NewAccountRoot    *big.Int
	ProofEmptyTree    []*big.Int
	ProofPosEmptyTree []int
	DepositRegisterTx *Transaction
}
