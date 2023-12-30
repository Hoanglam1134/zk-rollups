package models

type DepositRegisterProof struct {
	OldAccountRoot    []byte
	NewAccountRoot    []byte
	ProofEmptyTree    [][]byte
	ProofPosEmptyTree []int
	DepositRegisterTx *Transaction
}
