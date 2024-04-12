package main

import (
	"context"
	"fmt"
	"log"
	"math/big"
	"strings"
	"zk-rollups/contracts/middleware_contract"
	"zk-rollups/contracts/mimc_contract"
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

func DeploySmartContract(client *ethclient.Client) (*models.AccountTree, *middleware_contract.MiddlewareContract, error) {
	// ================ Init Account Tree ================
	accountTree := models.NewAccountTree()

	// ================== Deploy contracts ==================
	// load json file accounts
	addressesFile := helpers.LoadJsonAccounts()

	// load Auth to deploy contracts
	auth0, err := helpers.LoadAuth(client, helpers.LoadAccountsOption{
		AddressesFile: addressesFile,
		Index:         0,
	})
	if err != nil {
		fmt.Println("error when load auth 0 to deploy contracts")
		log.Fatal(err)
	}
	fmt.Println("Loaded auth0")

	auth1, err := helpers.LoadAuth(client, helpers.LoadAccountsOption{
		AddressesFile: addressesFile,
		Index:         1,
	})
	if err != nil {
		fmt.Println("error when load auth 1 to deploy contracts")
		log.Fatal(err)
	}

	fmt.Println("Loaded auth1")

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
	middlewareAddress, middTx, middlewareInstance, err := middleware_contract.DeployMiddlewareContract(auth1, client, mimcAddress, initialAccountRoot)

	if err != nil {
		fmt.Println("error deploy Middleware contracts")
		log.Fatal(err)
	}

	fmt.Println("Success, Middleware contract address: ", middlewareAddress.Hex())
	_ = middlewareInstance
	_ = middTx
	_ = middlewareAddress

	//================== Subscribing Log ==================
	sub, logs, err := subscribeLogs(middlewareAddress, client)
	if err != nil {
		fmt.Println("error subscribe filter logs")
		log.Fatal(err)
	}
	//goroutine to handle logs
	go func(sub ethereum.Subscription, logs chan types.Log, tree *models.AccountTree) {
		fmt.Println("Start goroutine to handle logs")
		for {
			select {
			case err := <-sub.Err():
				fmt.Println("error subscribe filter logs")
				log.Fatal(err)
			case vLog := <-logs:
				handleMiddlewareLog(vLog, tree)
			}
		}
	}(sub, logs, accountTree)
	return accountTree, middlewareInstance, nil
}

func handleMiddlewareLog(vLog types.Log, accountTree *models.AccountTree) {
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

		if len(DepositRegisterTxs) == utils.RollupSize {
			fmt.Println("ROLLING UP REGISTER...")
			RollupRegister(accountTree, DepositRegisterTxs)
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
			RollupExistence(accountTree, DepositExistenceTxs)
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
		fmt.Println("error: not found event")
	}
}

// RollupRegister ...
func RollupRegister(accountTree *models.AccountTree, txs []*models.Transaction) {
	fmt.Println("RollupRegister")

	// ============== Proof Account Tree ================
	oldAccountRoot := accountTree.GetRoot()
	accounts := models.ToListAccounts(txs)
	newAccountTree := models.NewTreeFromAccounts(accounts)
	registerAccountRoot := newAccountTree.GetRoot()

	// // Find empty tree node
	emptyNodeIndex := accountTree.FindEmptyNodeIndex()
	if emptyNodeIndex == -1 {
		fmt.Println("error: tree is full")
		return
	}
	emptyNodeProof, emptyNodeProofPos := accountTree.GetProof(emptyNodeIndex)

	// Update new account tree to main tree
	accountTree.AddSubTree(emptyNodeIndex, newAccountTree)
	accountTree.ReHashing(emptyNodeIndex)
	newAccountRoot := accountTree.GetRoot()

	// ================== Proof Txs Tree ==================
	newTxsTree := models.NewTreeFromTransactions(txs)
	proofTxExist, proofPosTxExist := newTxsTree.GetProofAll()

	// print file json
	finalProof := &models.DepositRegisterProof{
		DepositRegisterRoot: newTxsTree.GetRoot(),
		RegisterAccountRoot: registerAccountRoot,
		OldAccountRoot:      oldAccountRoot,
		NewAccountRoot:      newAccountRoot,
		ProofEmptyTree:      emptyNodeProof,
		ProofPosEmptyTree:   emptyNodeProofPos,
		SenderPubKeyX:       utils.Map(txs, func(tx *models.Transaction) *big.Int { return tx.FromX }),
		SenderPubKeyY:       utils.Map(txs, func(tx *models.Transaction) *big.Int { return tx.FromY }),
		ReceiverPubKeyX:     utils.Map(txs, func(tx *models.Transaction) *big.Int { return tx.ToX }),
		ReceiverPubKeyY:     utils.Map(txs, func(tx *models.Transaction) *big.Int { return tx.ToY }),
		Amount:              utils.Map(txs, func(tx *models.Transaction) *big.Int { return tx.Amount }),
		R8X:                 utils.Map(txs, func(tx *models.Transaction) *big.Int { return tx.R8X }),
		R8Y:                 utils.Map(txs, func(tx *models.Transaction) *big.Int { return tx.R8Y }),
		S:                   utils.Map(txs, func(tx *models.Transaction) *big.Int { return tx.S }),
		ProofTxExist:        proofTxExist,
		ProofPosTxExist:     proofPosTxExist,
	}
	errJson := utils.PrintJson(finalProof, utils.PathRegister)
	if errJson != nil {
		fmt.Println("error print json")
		log.Fatal(errJson)
	}
}

func RollupExistence(accountTree *models.AccountTree, txs []*models.Transaction) {
	fmt.Println("RollupExistence")

	//oldAccountRoot := accountTree.GetRoot()
	var intermediateRoots []*big.Int
	//accounts := models.ToListAccounts(txs)

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
	}

	// print file json // not done yet, need to define the struct of proof
	//finalProof := &models.DepositExistenceProof{
	//	OldAccountRoot:    oldAccountRoot,
	//	NewAccountRoot:    nil,
	//	IntermediateRoots: intermediateRoots,
	//}
	//errJson := utils.PrintJson(finalProof, utils.PathExistence)
	//if errJson != nil {
	//	fmt.Println("[RollupExistence] error print json")
	//	log.Fatal(errJson)
	//}
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
