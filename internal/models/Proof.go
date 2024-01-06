package models

type DepositRegisterProof struct {
	OldAccountRoot    []byte `json:"old_account_root"`
	NewAccountRoot    []byte
	ProofEmptyTree    [][]byte
	ProofPosEmptyTree []int
	DepositRegisterTx *Transaction
}
