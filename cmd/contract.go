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
)

func DeploySmartContract(client *ethclient.Client) (*models.AccountTree, *middleware_contract.MiddlewareContract, error) {
	// ================ Init Account Tree ================
	accountTree := models.NewAccountTree()

	// ================== Deploy contracts ==================
	// load json file accounts
	addressesFile := helpers.LoadJsonAccounts()

	// load Auth to deploy contracts
	auth0, err := helpers.LoadAuth(addressesFile, client, 0)
	if err != nil {
		fmt.Println("error when load auth 0 to deploy contracts")
		log.Fatal(err)
	}

	auth1, err := helpers.LoadAuth(addressesFile, client, 1)
	if err != nil {
		fmt.Println("error when load auth 1 to deploy contracts")
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
	initialAccountRoot := new(big.Int)
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
				fmt.Println("\nHandle contract log")
				handleMiddlewareLog(vLog, tree)
			}
		}
	}(sub, logs, accountTree)

	// ================== Call contracts ==================
	// test deposit from 2 -> 3
	auth2, _ := helpers.LoadAuth(addressesFile, client, 2)

	for i := 1; i <= 4; i++ {
		depositTx := helpers.DebugCreateTx(15)
		//  prepare data
		fromX := depositTx.FromX
		fromY := depositTx.FromY
		toX := depositTx.ToX
		toY := depositTx.ToY
		r8x := depositTx.R8X
		r8y := depositTx.R8Y
		s := depositTx.S
		tx, err := middlewareInstance.Deposit(auth2, fromX, fromY, toX, toY, depositTx.Amount, r8x, r8y, s)
		if err != nil {
			fmt.Println("error call deposit middleware contract")
			log.Fatal(err)
		}
		_ = tx
	}
	return accountTree, middlewareInstance, nil
}

func handleMiddlewareLog(vLog types.Log, accountTree *models.AccountTree) {
	// TODO: need convert it as a const to use later
	middlewareContractAbi, err := abi.JSON(strings.NewReader(middleware_contract.MiddlewareContractMetaData.ABI))
	if err != nil {
		fmt.Println("error abi.JSON middleware contract")
		log.Fatal(err)
	}
	fmt.Println("vlog.Topics[0].Hex(): ", vLog.Topics[0].Hex())

	switch vLog.Topics[0].Hex() {
	case utils.TopicDebugCalled:
		events, err := middlewareContractAbi.Unpack(utils.NameDebugCalled, vLog.Data)
		if err != nil {
			fmt.Println("error Unpack middleware event dGetString")
			log.Fatal(err)
		}
		fmt.Println("vlog.Data: ", string(vLog.Data))
		for _, item := range events {
			event := item.(string)
			fmt.Println("event: ", event)
		}
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
			FromX:  utils.ConvertToBytes(events[0].([32]byte)),
			FromY:  utils.ConvertToBytes(events[1].([32]byte)),
			ToX:    utils.ConvertToBytes(events[2].([32]byte)),
			ToY:    utils.ConvertToBytes(events[3].([32]byte)),
			Amount: events[4].(*big.Int),
			R8X:    utils.ConvertToBytes(events[5].([32]byte)),
			R8Y:    utils.ConvertToBytes(events[6].([32]byte)),
			S:      utils.ConvertToBytes(events[7].([32]byte)),
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
		transferTx := &models.Transaction{
			FromX:  utils.ConvertToBytes(events[0].([32]byte)),
			FromY:  utils.ConvertToBytes(events[1].([32]byte)),
			ToX:    utils.ConvertToBytes(events[2].([32]byte)),
			ToY:    utils.ConvertToBytes(events[3].([32]byte)),
			Amount: events[4].(*big.Int),
			R8X:    utils.ConvertToBytes(events[5].([32]byte)),
			R8Y:    utils.ConvertToBytes(events[6].([32]byte)),
			S:      utils.ConvertToBytes(events[7].([32]byte)),
		}
		fmt.Println("TRANSFER ...")
		// add balance to receiver
		accountIdx := accountTree.AddBalanceToAccount(transferTx.ToX, transferTx.ToY, transferTx.Amount, true)
		if accountIdx == -1 {
			fmt.Println("error: account receiver not found")
			return
		}
		// sub balance from sender
		accountIdx = accountTree.AddBalanceToAccount(transferTx.FromX, transferTx.FromY, transferTx.Amount, false)
		if accountIdx == -1 {
			fmt.Println("error: account sender not found")
			return
		}
		// TODO: need re-hash after
	default:
		fmt.Println("error: not found event")
	}
}

// Rollup is a function to update account tree
// -
func RollupRegister(accountTree *models.AccountTree, txs []*models.Transaction) *models.DepositRegisterProof {
	fmt.Println("RollupRegister")
	oldAccountRoot := accountTree.GetRoot()
	fmt.Println("Done creating Old Account Root: ", oldAccountRoot)

	accounts := models.ToListAccounts(txs)
	fmt.Println("Done creating Accounts: ", accounts)

	newAccountTree := models.NewTreeFromAccounts(accounts)
	fmt.Println("Done creating new tree")
	// Verify signature: luc dung luc sai :(((
	for _, tx := range txs {
		valid := tx.VerifyTx()
		if !valid {
			fmt.Println("error: tx invalid, wrong signature")
			return nil
		}
	}

	fmt.Println("pass!")

	// // Find empty tree node
	emptyNodeIndex := accountTree.FindEmptyNodeIndex()
	if emptyNodeIndex == -1 {
		fmt.Println("error: tree is full")
		return nil
	}
	emptyNodeProof, emptyNodeProofPos := accountTree.GetProof(emptyNodeIndex)

	// Update new account tree to main tree
	accountTree.AddSubTree(emptyNodeIndex, newAccountTree)
	accountTree.ReHashing(emptyNodeIndex)
	newAccountRoot := accountTree.GetRoot()

	// print file json
	finalProof := &models.DepositRegisterProof{
		OldAccountRoot:    oldAccountRoot,
		NewAccountRoot:    newAccountRoot,
		ProofEmptyTree:    emptyNodeProof,
		ProofPosEmptyTree: emptyNodeProofPos,
		DepositRegisterTx: nil,
	}
	errJson := utils.PrintJson(finalProof)
	if errJson != nil {
		fmt.Println("error print json")
		log.Fatal(errJson)
	}
	return nil
}

func RollupExistence(accountTree *models.AccountTree, txs []*models.Transaction) *models.DepositRegisterProof {
	fmt.Println("RollupExistence")

	// Update new balance to accounts
	for _, tx := range txs {
		accountIdx := accountTree.AddBalanceToAccount(tx.ToX, tx.ToY, tx.Amount, true)
		if accountIdx == -1 {
			fmt.Println("error: account not found")
			return nil
		}
	}

	// rehashing
	accountTree.ReHashing(14) // TODO: hard code here
	return nil
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
