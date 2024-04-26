package service

import (
	"context"
	"fmt"
	"github.com/ethereum/go-ethereum/accounts/abi/bind"
	"github.com/ethereum/go-ethereum/common"
	"log"
	"math"
	"math/big"
	"zk-rollups/api"
	"zk-rollups/helpers"
	"zk-rollups/internal/models"
	"zk-rollups/utils"
)

func (service *Service) GetAccountsStatus(ctx context.Context, req *api.GetAccountsStatusRequest) (*api.GetAccountsStatusResponse, error) {
	fmt.Println("Service: GetAccountsStatus")
	// #1 Load L1-Balance
	// load json file accounts
	mapL1Balance := make(map[string]*big.Int)
	for _, address := range service.addressFile.AddressesSlice {
		account := common.HexToAddress(address)
		balance, err := service.client.BalanceAt(context.Background(), account, nil)
		if err != nil {
			fmt.Println("error when get balance of contract")
			return nil, err
		}
		ethVal := new(big.Int).Quo(balance, big.NewInt(int64(math.Pow10(18))))
		privateKey := service.addressFile.PrivateKeysMap[address]
		publicKey, _ := utils.Private2Public(privateKey)
		publicKeyShow := utils.PublicKeyToString(publicKey)
		mapL1Balance[publicKeyShow] = ethVal
	}
	// #2 Load L2-Balance
	res := make([]*api.GetAccountsStatusResponse_Account, 0, utils.AccountSize)
	for _, value := range service.accountTree.Arr {
		fmt.Println("index: ", value.Index)
		if value.Index != utils.MinusOne {
			fmt.Println("public key: ", value.GetPubKeyShow())
			res = append(res, &api.GetAccountsStatusResponse_Account{
				Id:        int32(value.Index),
				PublicKey: value.GetPubKeyShow(),
				Balance:   value.Balance.String(),
				L1Balance: mapL1Balance[value.GetPubKeyShow()].String(),
			})
		} else {
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
		client           = service.client
		privateKeyString = request.GetTransaction().GetFrom()
	)

	// load auth to present a contract call
	auth, _, err := helpers.LoadAuth(client, helpers.LoadAccountsOption{
		AddressesFile: service.addressFile,
		PrivateKey:    privateKeyString,
	})
	if err != nil {
		fmt.Println("error when load auth to present a deposit")
		log.Fatal(err)
		return nil, err
	}
	// set value for auth
	auth.Value = big.NewInt(request.GetTransaction().GetAmount() * 1e18)
	err = service.deposit(auth, privateKeyString, request.GetTransaction().GetAmount())
	if err != nil {
		return nil, err
	}

	return &api.DebugDepositResponse{
		Res: "Success",
	}, nil
}

func (service *Service) deposit(auth *bind.TransactOpts, privateKeyString string, amountInt64 int64) error {
	// create user from private key
	account, privateKey := models.CreateNewAccount(privateKeyString)

	amount := big.NewInt(amountInt64)
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

	_, err := service.middlewareInstance.Deposit(auth, tx.FromX, tx.FromY, tx.ToX, tx.ToY, amount, tx.R8X, tx.R8Y, tx.S)
	if err != nil {
		fmt.Println("[DebugDeposit] error call deposit middleware contract")
		log.Fatal(err)
		return err
	}
	return nil
}

func (service *Service) DebugTransfer(ctx context.Context, request *api.DebugTransferRequest) (*api.DebugTransferResponse, error) {
	fmt.Printf("Service: DebugTransfer: from %v, amount: %v, to %v", request.GetTransaction().GetFrom(),
		request.GetTransaction().GetAmount(), request.GetTransaction().GetTo())

	var (
		client               = service.client
		privateKeyStringFrom = request.GetTransaction().GetFrom()
		privateKeyStringTo   = request.GetTransaction().GetTo()
	)

	// load auth to present a contract call
	authFrom, _, err := helpers.LoadAuth(client, helpers.LoadAccountsOption{
		AddressesFile: service.addressFile,
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
		client           = service.client
		privateKeyString = request.GetTransaction().GetFrom()
	)

	// load auth to present a contract call
	authFrom, _, err := helpers.LoadAuth(client, helpers.LoadAccountsOption{
		AddressesFile: service.addressFile,
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

func (service *Service) DebugFullFlowRegister(ctx context.Context, request *api.DebugFullFlowRegisterRequest) (*api.DebugFullFlowRegisterResponse, error) {
	fmt.Println("Service: DebugFullFlowRegister")

	var (
		client = service.client
	)

	for i := request.GetStartId(); i < request.GetStartId()+utils.RollupSize; i++ {
		// load auth to present a contract call
		authFrom, privateKeyString, err := helpers.LoadAuth(client, helpers.LoadAccountsOption{
			AddressesFile: service.addressFile,
			Index:         i,
		})
		if err != nil {
			fmt.Println("[DebugFullFlowRegister] error when load auth from to present a deposit")
			log.Fatal(err)
			return nil, err
		}
		fmt.Println("index: ", i)
		fmt.Println("private key: ", privateKeyString)
		// deposit
		err = service.deposit(authFrom, privateKeyString, request.GetAmount())
		if err != nil {
			return nil, err
		}
	}

	return &api.DebugFullFlowRegisterResponse{
		Res: "Success",
	}, nil
}
