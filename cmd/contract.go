package main

import (
	"context"
	"fmt"
	"log"
	"math/big"
	"os/exec"
	"strings"
	"zk-rollups/contracts/middleware_contract"
	"zk-rollups/contracts/mimc_contract"
	"zk-rollups/contracts/verifier/existence_contract"
	"zk-rollups/contracts/verifier/register_contract"
	"zk-rollups/helpers"
	"zk-rollups/internal/models"
	"zk-rollups/utils"

	"github.com/ethereum/go-ethereum"
	"github.com/ethereum/go-ethereum/accounts/abi"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/core/types"
	"github.com/ethereum/go-ethereum/ethclient"
)

var (
	DepositRegisterTxs  []*models.Transaction
	DepositExistenceTxs []*models.Transaction
	TransferTxs         []*models.Transaction
	WithdrawTxs         []*models.Transaction
)

type ContractInstance struct {
	Register  *register_contract.RegisterContract
	Existence *existence_contract.ExistenceContract
}

func DeploySmartContract(client *ethclient.Client, addressFile helpers.AddressesFile) (*models.AccountTree, *middleware_contract.MiddlewareContract, error) {
	// ================ Init Account Tree ================
	accountTree := models.NewAccountTree()

	// ================ Init contracts instance ================
	contractInstance := &ContractInstance{}

	// ================== Deploy contracts ==================

	// load Auth to deploy contracts
	auth0, _, err := helpers.LoadAuth(client, helpers.LoadAccountsOption{
		AddressesFile: addressFile,
		Index:         0,
	})
	if err != nil {
		fmt.Println("error when load auth 0 to deploy contracts")
		log.Fatal(err)
	}
	auth1, _, err := helpers.LoadAuth(client, helpers.LoadAccountsOption{
		AddressesFile: addressFile,
		Index:         1,
	})
	if err != nil {
		fmt.Println("error when load auth 1 to deploy contracts")
		log.Fatal(err)
	}
	auth2, _, err := helpers.LoadAuth(client, helpers.LoadAccountsOption{
		AddressesFile: addressFile,
		Index:         2,
	})
	if err != nil {
		fmt.Println("error when load auth 2 to deploy contracts")
		log.Fatal(err)
	}
	// deploy contracts
	// Mimc contract
	mimcAddress, mimcTx, mimcInstance, err := mimc_contract.DeployMimcContract(auth0, client)
	if err != nil {
		fmt.Println("error deploy Mimc contracts")
		log.Fatal(err)
	}
	fmt.Println("Success, Mimc contract address: ", mimcAddress.Hex())
	_ = mimcInstance
	_ = mimcTx
	_ = mimcAddress

	// Middleware contract
	initialAccountRoot := new(big.Int).SetInt64(0)
	middlewareAddress, middlewareTx, middlewareInstance, err := middleware_contract.DeployMiddlewareContract(auth1, client, mimcAddress, initialAccountRoot)

	if err != nil {
		fmt.Println("error deploy Middleware contracts")
		log.Fatal(err)
	}

	fmt.Println("Success, Middleware contract address: ", middlewareAddress.Hex())
	_ = middlewareInstance
	_ = middlewareTx
	_ = middlewareAddress

	// Register Verifier contract
	registerVerifierAddress, registerVerifierTx, registerVerifierInstance, err := register_contract.DeployRegisterContract(auth2, client)
	if err != nil {
		fmt.Println("error deploy register contracts")
		log.Fatal(err)
	}

	fmt.Println("Success, Register verifier contract address: ", registerVerifierAddress.Hex())
	_ = registerVerifierTx
	contractInstance.Register = registerVerifierInstance

	// Existence Verifier contract
	existenceVerifierAddress, existenceVerifierTx, existenceVerifierInstance, err := existence_contract.DeployExistenceContract(auth2, client)
	if err != nil {
		fmt.Println("error deploy existence contracts")
		log.Fatal(err)
	}

	fmt.Println("Success, Existence verifier contract address: ", existenceVerifierAddress.Hex())
	_ = existenceVerifierTx
	contractInstance.Existence = existenceVerifierInstance

	//================== Subscribing Log ==================
	sub, logs, err := subscribeLogs(middlewareAddress, client)
	if err != nil {
		fmt.Println("error subscribe filter logs")
		log.Fatal(err)
	}
	//goroutine to handle logs
	go func(sub ethereum.Subscription, logs chan types.Log, tree *models.AccountTree, instances *ContractInstance) {
		fmt.Println("Start goroutine to handle logs")
		for {
			select {
			case err := <-sub.Err():
				fmt.Println("error subscribe filter logs")
				log.Fatal(err)
			case vLog := <-logs:
				handleMiddlewareLog(vLog, tree, instances)
			}
		}
	}(sub, logs, accountTree, contractInstance)
	return accountTree, middlewareInstance, nil
}

func handleMiddlewareLog(vLog types.Log, accountTree *models.AccountTree, contractInstances *ContractInstance) {
	// TODO: need convert it as a const to use later
	middlewareContractAbi, err := abi.JSON(strings.NewReader(middleware_contract.MiddlewareContractMetaData.ABI))
	if err != nil {
		fmt.Println("error abi.JSON middleware contract")
		log.Fatal(err)
	}
	// uncomment this to get the topic hex value (when changing the smart contract)
	//fmt.Println("vlog.Topics[0].Hex(): ", vLog.Topics[0].Hex())

	switch vLog.Topics[0].Hex() {
	case utils.TopicGetString:
		events, err := middlewareContractAbi.Unpack(utils.NameGetString, vLog.Data)
		if err != nil {
			fmt.Println("error Unpack middleware event NameGetString")
			log.Fatal(err)
		}
		log.Println("Debug from Middleware contract: ", events[0].(string))

	case utils.TopicDepositRegister:
		fmt.Println("Handling event eDepositRegister")
		events, err := middlewareContractAbi.Unpack(utils.NameDepositRegister, vLog.Data)
		if err != nil {
			fmt.Println("error Unpack middleware event eDepositRegister")
			log.Fatal(err)
		}

		DepositRegisterTxs = append(DepositRegisterTxs, &models.Transaction{
			FromX:        events[0].(*big.Int),
			FromY:        events[1].(*big.Int),
			ToX:          events[2].(*big.Int),
			ToY:          events[3].(*big.Int),
			Amount:       events[4].(*big.Int),
			Nonce:        new(big.Int),
			R8X:          events[5].(*big.Int),
			R8Y:          events[6].(*big.Int),
			S:            events[7].(*big.Int),
			EcdsaAddress: events[8].(common.Address),
		})

		if len(DepositRegisterTxs) == utils.RollupSize {
			RollupRegister(accountTree, DepositRegisterTxs, contractInstances)
			// reset
			DepositRegisterTxs = []*models.Transaction{}
		}
	case utils.TopicDepositExistence:
		fmt.Println("Handling event eDepositExistence")
		events, err := middlewareContractAbi.Unpack(utils.NameDepositExistence, vLog.Data)
		if err != nil {
			fmt.Println("error Unpack middleware event eDepositExistence")
			log.Fatal(err)
		}
		DepositExistenceTxs = append(DepositExistenceTxs, &models.Transaction{
			FromX:  events[0].(*big.Int),
			FromY:  events[1].(*big.Int),
			ToX:    events[2].(*big.Int),
			ToY:    events[3].(*big.Int),
			Amount: events[4].(*big.Int),
			Nonce:  new(big.Int),
			R8X:    events[5].(*big.Int),
			R8Y:    events[6].(*big.Int),
			S:      events[7].(*big.Int),
		})
		if len(DepositExistenceTxs) == utils.RollupSize {
			fmt.Println("ROLLING UP EXISTENCE...")
			RollupExistence(accountTree, DepositExistenceTxs, contractInstances)
			// reset
			DepositExistenceTxs = []*models.Transaction{}
		}
	case utils.TopicTransfer:
		fmt.Println("Handling event eTransfer")
		events, err := middlewareContractAbi.Unpack(utils.NameTransfer, vLog.Data)
		if err != nil {
			fmt.Println("error Unpack middleware event eTransfer")
			log.Fatal(err)
		}
		TransferTxs = append(TransferTxs, &models.Transaction{
			FromX:  events[0].(*big.Int),
			FromY:  events[1].(*big.Int),
			ToX:    events[2].(*big.Int),
			ToY:    events[3].(*big.Int),
			Amount: events[4].(*big.Int),
			Nonce:  new(big.Int),
			R8X:    events[5].(*big.Int),
			R8Y:    events[6].(*big.Int),
			S:      events[7].(*big.Int),
		})
		if len(TransferTxs) == utils.RollupSize {
			fmt.Println("ROLLING UP TRANSFER...")
			RollupTransfer(accountTree, TransferTxs)
			// reset
			TransferTxs = []*models.Transaction{}
		}
	case utils.TopicWithdraw:
		fmt.Println("Handling event eWithdraw")
		events, err := middlewareContractAbi.Unpack(utils.NameWithdraw, vLog.Data)
		if err != nil {
			fmt.Println("error Unpack middleware event eWithdraw")
			log.Fatal(err)
		}
		WithdrawTxs = append(WithdrawTxs, &models.Transaction{
			FromX:  events[0].(*big.Int),
			FromY:  events[1].(*big.Int),
			ToX:    events[2].(*big.Int),
			ToY:    events[3].(*big.Int),
			Amount: events[4].(*big.Int),
			Nonce:  new(big.Int),
			R8X:    events[5].(*big.Int),
			R8Y:    events[6].(*big.Int),
			S:      events[7].(*big.Int),
		})
		if len(WithdrawTxs) == utils.RollupSize {
			fmt.Println("ROLLING UP WITHDRAW...")
			RollupWithdraw(accountTree, WithdrawTxs)
			// reset
			WithdrawTxs = []*models.Transaction{}
		}
	default:
		fmt.Printf("error: not found event %v", vLog.Topics[0].Hex())
	}
}

// RollupRegister ...
func RollupRegister(accountTree *models.AccountTree, txs []*models.Transaction, contractInstances *ContractInstance) {
	fmt.Println("RollupRegister")

	// ============== Proof Account Tree ================
	oldAccountRoot := accountTree.GetRoot()
	accounts := models.ToListAccounts(txs)
	newAccountTree := models.NewTreeFromAccounts(accounts)
	registerAccountRoot := newAccountTree.GetRoot()

	// check signature
	for _, tx := range txs {
		valid := tx.VerifyTx()
		if !valid {
			fmt.Println("[RollupRegister] error: tx invalid, wrong signature")
			return
		}
	}

	// Find empty tree node
	emptyNodeIndex, emptyAccountIndex := accountTree.FindEmptyNodeIndex()
	if emptyNodeIndex == -1 {
		fmt.Println("error: tree is full")
		return
	}
	emptyNodeProof, emptyNodeProofPos := accountTree.GetProof(emptyNodeIndex)

	// Update new account tree to main tree
	accountTree.AddSubTree(emptyNodeIndex, emptyAccountIndex, newAccountTree)
	accountTree.ReHashing(emptyNodeIndex)
	newAccountRoot := accountTree.GetRoot()

	// ================== Proof Txs Tree ==================
	newTxsTree := models.NewTreeFromTransactions(txs)
	proofTxExist, proofPosTxExist := newTxsTree.GetProofAll()

	// print file json
	finalProof := &models.DepositRegisterProof{
		DepositRegisterRoot: newTxsTree.GetRoot().String(),
		RegisterAccountRoot: registerAccountRoot.String(),
		OldAccountRoot:      oldAccountRoot.String(),
		NewAccountRoot:      newAccountRoot.String(),
		ProofEmptyTree:      utils.Map(emptyNodeProof, func(p *big.Int) string { return p.String() }),
		ProofPosEmptyTree:   emptyNodeProofPos,
		SenderPubKeyX:       utils.Map(txs, func(tx *models.Transaction) string { return tx.FromX.String() }),
		SenderPubKeyY:       utils.Map(txs, func(tx *models.Transaction) string { return tx.FromY.String() }),
		ReceiverPubKeyX:     utils.Map(txs, func(tx *models.Transaction) string { return tx.ToX.String() }),
		ReceiverPubKeyY:     utils.Map(txs, func(tx *models.Transaction) string { return tx.ToY.String() }),
		Amount:              utils.Map(txs, func(tx *models.Transaction) string { return tx.Amount.String() }),
		R8X:                 utils.Map(txs, func(tx *models.Transaction) string { return tx.R8X.String() }),
		R8Y:                 utils.Map(txs, func(tx *models.Transaction) string { return tx.R8Y.String() }),
		S:                   utils.Map(txs, func(tx *models.Transaction) string { return tx.S.String() }),
		ProofTxExist:        utils.Map(proofTxExist, func(p []*big.Int) []string { return utils.Map(p, func(p *big.Int) string { return p.String() }) }),
		ProofPosTxExist:     proofPosTxExist,
	}
	errJson := utils.PrintJson(finalProof, utils.PathRegister)
	if errJson != nil {
		fmt.Println("error print json")
		log.Fatal(errJson)
	}

	// generate proof for register
	callData, err := exec.Command("/bin/bash", "/home/victus-15/Study/zk-rollups/circuits/deposit_register/run.sh").Output()
	if err != nil {
		fmt.Println("[Register] error generate proof")
		log.Fatal(err)
	}
	fmt.Println("Success: generate proof")
	proof := helpers.HandleRegisterCallData(string(callData))

	// verify proof
	valid, err := contractInstances.Register.VerifyProof(nil, proof.Pa, proof.Pb, proof.Pc, proof.Pub)
	if err != nil {
		fmt.Println("error verify proof")
		log.Fatal(err)
	}
	//time.Sleep(5 * time.Second)
	if !valid {
		fmt.Println("error: invalid proof")
	} else {
		fmt.Println("Success: valid proof")
	}
}

func RollupExistence(accountTree *models.AccountTree, txs []*models.Transaction, contractInstances *ContractInstance) {
	fmt.Println("RollupExistence")

	oldAccountRoot := accountTree.GetRoot()
	var (
		intermediateRoots         []*big.Int
		proofIntermediateRoots    [][]*big.Int
		proofPosIntermediateRoots [][]int
	)

	for _, tx := range txs {
		valid := tx.VerifyTx()
		if !valid {
			fmt.Println("[RollupExistence] error: tx invalid, wrong signature")
			return
		}
	}

	// Update new balance to accounts
	for _, tx := range txs {
		// first: add new balance to account
		// in AddBalanceToAccount, it also rehashes the tree after adding new balance
		accountIdx := accountTree.AddBalanceToAccount(tx.ToX, tx.ToY, tx.Amount, true)
		if accountIdx == -1 {
			fmt.Println("error: account not found")
			return
		}

		// second: retrieve proofs
		intermediateRoots = append(intermediateRoots, accountTree.GetRoot())
		proof, pos := accountTree.GetProof(accountIdx)
		proofIntermediateRoots = append(proofIntermediateRoots, proof)
		proofPosIntermediateRoots = append(proofPosIntermediateRoots, pos)
	}

	// ================== Proof Txs Tree ==================
	newTxsTree := models.NewTreeFromTransactions(txs)
	proofTxExist, proofPosTxExist := newTxsTree.GetProofAll()

	// print file json
	finalProof := &models.DepositExistenceProof{
		DepositExistenceRoot:      newTxsTree.GetRoot().String(),
		OldAccountRoot:            oldAccountRoot.String(),
		IntermediateRoots:         utils.Map(intermediateRoots, func(p *big.Int) string { return p.String() }),
		NewAccountHash:            nil,
		ProofIntermediateRoots:    utils.Map(proofIntermediateRoots, func(p []*big.Int) []string { return utils.Map(p, func(p *big.Int) string { return p.String() }) }),
		ProofPosIntermediateRoots: proofPosIntermediateRoots,
		SenderPubKeyX:             utils.Map(txs, func(tx *models.Transaction) string { return tx.FromX.String() }),
		SenderPubKeyY:             utils.Map(txs, func(tx *models.Transaction) string { return tx.FromY.String() }),
		ReceiverPubKeyX:           utils.Map(txs, func(tx *models.Transaction) string { return tx.ToX.String() }),
		ReceiverPubKeyY:           utils.Map(txs, func(tx *models.Transaction) string { return tx.ToY.String() }),
		Amount:                    utils.Map(txs, func(tx *models.Transaction) string { return tx.Amount.String() }),
		R8X:                       utils.Map(txs, func(tx *models.Transaction) string { return tx.R8X.String() }),
		R8Y:                       utils.Map(txs, func(tx *models.Transaction) string { return tx.R8Y.String() }),
		S:                         utils.Map(txs, func(tx *models.Transaction) string { return tx.S.String() }),
		ProofTxExist:              utils.Map(proofTxExist, func(p []*big.Int) []string { return utils.Map(p, func(p *big.Int) string { return p.String() }) }),
		ProofPosTxExist:           proofPosTxExist,
	}
	errJson := utils.PrintJson(finalProof, utils.PathExistence)
	if errJson != nil {
		fmt.Println("[RollupExistence] error print json")
		log.Fatal(errJson)
	}

	// generate proof for existence
	callData, err := exec.Command("/bin/bash", "/home/victus-15/Study/zk-rollups/circuits/deposit_existence/run.sh").Output()
	if err != nil {
		fmt.Println("[Existence] error generate proof")
		log.Fatal(err)
	}
	fmt.Println("Success: generate proof")
	fmt.Println(string(callData))
	proof := helpers.HandleExistenceCallData(string(callData))

	// verify proof
	valid, err := contractInstances.Existence.VerifyProof(nil, proof.Pa, proof.Pb, proof.Pc, proof.Pub)
	if err != nil {
		fmt.Println("error verify proof")
		log.Fatal(err)
	}
	//time.Sleep(5 * time.Second)
	if !valid {
		fmt.Println("error: invalid proof")
	} else {
		fmt.Println("Success: valid proof")
	}
}

func RollupTransfer(accountTree *models.AccountTree, txs []*models.Transaction) {
	fmt.Println("RollupTransfer")
	//oldAccountRoot := accountTree.GetRoot()
	var intermediateRoots []*big.Int

	for _, tx := range txs {
		valid := tx.VerifyTx()
		if !valid {
			fmt.Println("[RollupTransfer] error: tx invalid, wrong signature")
			return
		}
	}

	// Update new balance to accounts
	for _, tx := range txs {
		// first: add new balance to account receiver
		// in AddBalanceToAccount, it also rehashes the tree after adding new balance
		accountIdx := accountTree.AddBalanceToAccount(tx.ToX, tx.ToY, tx.Amount, true)
		if accountIdx == -1 {
			fmt.Println("error: account not found")
			return
		}

		// retrieve proofs
		intermediateRoots = append(intermediateRoots, accountTree.GetRoot())

		// second: subtract balance from account sender
		accountIdx = accountTree.AddBalanceToAccount(tx.FromX, tx.FromY, tx.Amount, false)
		if accountIdx == -1 {
			fmt.Println("error: account not found")
			return
		}

		// retrieve proofs
		intermediateRoots = append(intermediateRoots, accountTree.GetRoot())
	}
	// TODO: need to print file json
}

func RollupWithdraw(accountTree *models.AccountTree, txs []*models.Transaction) {
	fmt.Println("RollupWithdraw")
	//oldAccountRoot := accountTree.GetRoot()
	var intermediateRoots []*big.Int

	for _, tx := range txs {
		valid := tx.VerifyTx()
		if !valid {
			fmt.Println("[RollupWithdraw] error: tx invalid, wrong signature")
			return
		}
	}

	// Update new balance to accounts
	for _, tx := range txs {
		// first: subtract balance from account
		// in AddBalanceToAccount, it also rehashes the tree after adding new balance
		accountIdx := accountTree.AddBalanceToAccount(tx.ToX, tx.ToY, tx.Amount, false)
		if accountIdx == -1 {
			fmt.Println("error: account not found")
			return
		}

		// second: retrieve proofs
		intermediateRoots = append(intermediateRoots, accountTree.GetRoot())
	}
	// TODO: need to print file json
}

func subscribeLogs(middlewareAddress common.Address, client *ethclient.Client) (ethereum.Subscription, chan types.Log, error) {
	// subscribe to log
	query := ethereum.FilterQuery{
		Addresses: []common.Address{middlewareAddress},
	}
	logs := make(chan types.Log)

	sub, err := client.SubscribeFilterLogs(context.Background(), query, logs)
	if err != nil {
		fmt.Println("error subscribe filter logs")
		log.Fatal(err)
		return nil, nil, err
	}
	return sub, logs, err
}
