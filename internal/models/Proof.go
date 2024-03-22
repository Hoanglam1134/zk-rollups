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
	DepositRegisterRoot *big.Int
	RegisterAccountRoot *big.Int
	OldAccountRoot      *big.Int
	NewAccountRoot      *big.Int
	ProofEmptyTree      []*big.Int
	ProofPosEmptyTree   []int
	SenderPubKeyX       []*big.Int
	SenderPubKeyY       []*big.Int
	ReceiverPubKeyX     []*big.Int
	ReceiverPubKeyY     []*big.Int
	Amount              []*big.Int
	R8X                 []*big.Int
	R8Y                 []*big.Int
	S                   []*big.Int
	ProofTxExist        [][]*big.Int
	ProofPosTxExist     [][]int
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
