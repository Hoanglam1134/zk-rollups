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
	DepositRegisterRoot string     `json:"depositRegisterRoot"`
	RegisterAccountRoot string     `json:"registerAccountRoot"`
	OldAccountRoot      string     `json:"oldAccountRoot"`
	NewAccountRoot      string     `json:"newAccountRoot"`
	ProofEmptyTree      []string   `json:"proofEmptyTree"`
	ProofPosEmptyTree   []int      `json:"proofPosEmptyTree"`
	SenderPubKeyX       []string   `json:"senderPubKeyX"`
	SenderPubKeyY       []string   `json:"senderPubKeyY"`
	ReceiverPubKeyX     []string   `json:"receiverPubKeyX"`
	ReceiverPubKeyY     []string   `json:"receiverPubKeyY"`
	Amount              []string   `json:"amount"`
	R8X                 []string   `json:"R8X"`
	R8Y                 []string   `json:"R8Y"`
	S                   []string   `json:"S"`
	ProofTxExist        [][]string `json:"proofTxExist"`
	ProofPosTxExist     [][]int    `json:"proofPosTxExist"`
}

type DepositExistenceProof struct {
	DepositExistenceRoot      string     `json:"depositExistenceRoot"`
	OldAccountRoot            string     `json:"oldAccountRoot"`
	IntermediateRoots         []string   `json:"intermediateRoots"`
	NewAccountHash            []string   `json:"newAccountHash"`
	ProofIntermediateRoots    [][]string `json:"proofIntermediateRoots"`
	ProofPosIntermediateRoots [][]int    `json:"proofPosIntermediateRoots"`
	SenderPubKeyX             []string   `json:"senderPubKeyX"`
	SenderPubKeyY             []string   `json:"senderPubKeyY"`
	ReceiverPubKeyX           []string   `json:"receiverPubKeyX"`
	ReceiverPubKeyY           []string   `json:"receiverPubKeyY"`
	Amount                    []string   `json:"amount"`
	R8X                       []string   `json:"R8X"`
	R8Y                       []string   `json:"R8Y"`
	S                         []string   `json:"S"`
	ProofTxExist              [][]string `json:"proofTxExist"`
	ProofPosTxExist           [][]int    `json:"proofPosTxExist"`
}

type TransferProof struct {
	OldAccountRoot string
	NewAccountRoot string
	ProofEmptyTree []string
}

type WithdrawProof struct {
	OldAccountRoot string
	NewAccountRoot string
	ProofEmptyTree []string
}

// CallData ...
type CallDataRegister struct {
	Pa  [2]*big.Int
	Pb  [2][2]*big.Int
	Pc  [2]*big.Int
	Pub [4]*big.Int
}

type CallDataExistence struct {
	Pa  [2]*big.Int
	Pb  [2][2]*big.Int
	Pc  [2]*big.Int
	Pub [2]*big.Int
}
