package service

import (
	"context"
	"fmt"
	"log"
	"math/big"
	"zk-rollups/api"
	"zk-rollups/helpers"
	"zk-rollups/internal/models"
)

func (service *Service) GetAccountsStatus(ctx context.Context, req *api.GetAccountsStatusRequest) (*api.GetAccountsStatusResponse, error) {
	fmt.Println("Service: GetAccountsStatus")
	res := make([]*api.GetAccountsStatusResponse_Account, 10)
	for index, value := range service.accountTree.Arr {
		if value != nil {
			res[index] = &api.GetAccountsStatusResponse_Account{
				Id:        int32(value.Index),
				PublicKey: value.GetPubkeyShow(),
				Balance:   value.Balance.String(),
			}
		}
		if index > 4 {
			break
		}
	}
	return &api.GetAccountsStatusResponse{
		Accounts: res,
	}, nil
}

// DebugDeposit used to deposit a new account to layer 2
// This function is used for testing
// request.from means the private key of the account that want to deposit
func (service *Service) DebugDeposit(ctx context.Context, request *api.DebugDepositRequest) (*api.DebugDepositResponse, error) {
	fmt.Printf("Service: DebugDeposit: %v, amount: %v", request.GetTransaction().GetFrom(), request.GetTransaction().GetAmount())
	var (
		addressesFile    = helpers.LoadJsonAccounts()
		client           = service.client
		privateKeyString = request.GetTransaction().GetFrom()
	)

	// load auth to present a contract call
	auth, err := helpers.LoadAuth(client, helpers.LoadAccountsOption{
		AddressesFile: addressesFile,
		PrivateKey:    privateKeyString,
	})
	if err != nil {
		fmt.Println("error when load auth to present a deposit")
		log.Fatal(err)
		return nil, err
	}

	// create user from private key
	account, privateKey := models.CreateNewAccount(privateKeyString)

	amount := big.NewInt(request.GetTransaction().GetAmount())
	tx := &models.Transaction{
		FromX:  account.PubX,
		FromY:  account.PubY,
		ToX:    account.PubX,
		ToY:    account.PubY,
		Amount: amount,
		Nonce:  account.Nonce,
		R8X:    nil,
		R8Y:    nil,
		S:      nil,
	}
	// sign transaction
	tx.SignTx(privateKey)

	_, err = service.middlewareInstance.Deposit(auth, tx.FromX, tx.FromY, tx.ToX, tx.ToY, amount, tx.R8X, tx.R8Y, tx.S)
	if err != nil {
		fmt.Println("[DebugDeposit] error call deposit middleware contract")
		log.Fatal(err)
		return nil, err
	}
	return &api.DebugDepositResponse{
		Res: "Success",
	}, nil
}

func (service *Service) DebugTransfer(ctx context.Context, request *api.DebugTransferRequest) (*api.DebugTransferResponse, error) {
	fmt.Printf("Service: DebugTransfer: from %v, amount: %v, to %v", request.GetTransaction().GetFrom(),
		request.GetTransaction().GetAmount(), request.GetTransaction().GetTo())

	var (
		addressesFile        = helpers.LoadJsonAccounts()
		client               = service.client
		privateKeyStringFrom = request.GetTransaction().GetFrom()
		privateKeyStringTo   = request.GetTransaction().GetTo()
	)

	// load auth to present a contract call
	authFrom, err := helpers.LoadAuth(client, helpers.LoadAccountsOption{
		AddressesFile: addressesFile,
		PrivateKey:    privateKeyStringFrom,
	})
	if err != nil {
		fmt.Println("[DebugTransfer] error when load auth from to present a deposit")
		log.Fatal(err)
		return nil, err
	}

	// create user from private key (sender and receiver)
	// TODO: use private key of receiver to create account only (because ganache does not contain public key)
	accountFrom, privateKeyFrom := models.CreateNewAccount(privateKeyStringFrom)
	accountTo, _ := models.CreateNewAccount(privateKeyStringTo)

	amount := big.NewInt(request.GetTransaction().GetAmount())
	tx := &models.Transaction{
		FromX:  accountFrom.PubX,
		FromY:  accountFrom.PubY,
		ToX:    accountTo.PubX,
		ToY:    accountTo.PubY,
		Amount: amount,
		Nonce:  accountFrom.Nonce,
		R8X:    nil,
		R8Y:    nil,
		S:      nil,
	}
	// sign transaction (sign with private key of sender)
	tx.SignTx(privateKeyFrom)

	_, err = service.middlewareInstance.Transfer(authFrom, tx.FromX, tx.FromY, tx.ToX, tx.ToY, amount, tx.R8X, tx.R8Y, tx.S)
	if err != nil {
		fmt.Println("error call Transfer middleware contract")
		log.Fatal(err)
		return nil, err
	}
	return &api.DebugTransferResponse{
		Res: "Success",
	}, nil
}

func (service *Service) DebugWithdraw(ctx context.Context, request *api.DebugWithdrawRequest) (*api.DebugWithdrawResponse, error) {
	fmt.Printf("Service: DebugWithdraw: from %v, amount: %v", request.GetTransaction().GetFrom(),
		request.GetTransaction().GetAmount())

	var (
		addressesFile    = helpers.LoadJsonAccounts()
		client           = service.client
		privateKeyString = request.GetTransaction().GetFrom()
	)

	// load auth to present a contract call
	authFrom, err := helpers.LoadAuth(client, helpers.LoadAccountsOption{
		AddressesFile: addressesFile,
		PrivateKey:    privateKeyString,
	})
	if err != nil {
		fmt.Println("[DebugWithdraw] error when load auth from to present a deposit")
		log.Fatal(err)
		return nil, err
	}

	// create user from private key
	account, privateKey := models.CreateNewAccount(privateKeyString)

	amount := big.NewInt(request.GetTransaction().GetAmount())
	tx := &models.Transaction{
		FromX:  account.PubX,
		FromY:  account.PubY,
		ToX:    account.PubX,
		ToY:    account.PubY,
		Amount: amount,
		Nonce:  account.Nonce,
		R8X:    nil,
		R8Y:    nil,
		S:      nil,
	}
	// sign transaction (sign with private key of sender)
	tx.SignTx(privateKey)

	_, err = service.middlewareInstance.Withdraw(authFrom, tx.FromX, tx.FromY, tx.ToX, tx.ToY, amount, tx.R8X, tx.R8Y, tx.S)
	if err != nil {
		fmt.Println("error call Withdraw middleware contract")
		log.Fatal(err)
		return nil, err
	}
	return &api.DebugWithdrawResponse{
		Res: "Success",
	}, nil
}
