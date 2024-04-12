package models

import "math/big"

/* ================== Register ==================
// Public Signals
signal input depositRegisterRoot;
signal input registerAccountRoot;
signal input oldAccountRoot;
signal input newAccountRoot;

// Private Signals
signal input proofExistEmptySubTree[D_d];
signal input proofPosExistEmptySubTree[D_d];

signal input senderPubkeyX[noNewAccount];
signal input senderPubkeyY[noNewAccount];
signal input receiverPubkeyX[noNewAccount];
signal input receiverPubkeyY[noNewAccount];
signal input amount[noNewAccount];
signal input R8X[noNewAccount];
signal input R8Y[noNewAccount];
signal input S[noNewAccount];
signal input proofTxExist[noNewAccount][d];
signal input proofPosTxExist[noNewAccount][d];
*/

type DepositRegisterProof struct {
	DepositRegisterRoot *big.Int     `json:"depositRegisterRoot"`
	RegisterAccountRoot *big.Int     `json:"registerAccountRoot"`
	OldAccountRoot      *big.Int     `json:"oldAccountRoot"`
	NewAccountRoot      *big.Int     `json:"newAccountRoot"`
	ProofEmptyTree      []*big.Int   `json:"proofEmptyTree"`
	ProofPosEmptyTree   []int        `json:"proofPosEmptyTree"`
	SenderPubKeyX       []*big.Int   `json:"senderPubKeyX"`
	SenderPubKeyY       []*big.Int   `json:"senderPubKeyY"`
	ReceiverPubKeyX     []*big.Int   `json:"receiverPubKeyX"`
	ReceiverPubKeyY     []*big.Int   `json:"receiverPubKeyY"`
	Amount              []*big.Int   `json:"amount"`
	R8X                 []*big.Int   `json:"R8X"`
	R8Y                 []*big.Int   `json:"R8Y"`
	S                   []*big.Int   `json:"S"`
	ProofTxExist        [][]*big.Int `json:"proofTxExist"`
	ProofPosTxExist     [][]int      `json:"proofPosTxExist"`
}

type DepositExistenceProof struct {
	OldAccountRoot    *big.Int
	NewAccountRoot    *big.Int
	IntermediateRoots []*big.Int
}

type TransferProof struct {
	OldAccountRoot *big.Int
	NewAccountRoot *big.Int
	ProofEmptyTree []*big.Int
}

type WithdrawProof struct {
	OldAccountRoot *big.Int
	NewAccountRoot *big.Int
	ProofEmptyTree []*big.Int
}
