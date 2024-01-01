package service

import (
	"context"
	"fmt"
	"github.com/iden3/go-iden3-crypto/babyjub"
	"log"
	"math/big"
	"zk-rollups/api"
	"zk-rollups/helpers"
	"zk-rollups/utils"
)

func (s *Service) GetAccountsStatus(ctx context.Context, req *api.GetAccountsStatusRequest) (*api.GetAccountsStatusResponse, error) {
	fmt.Println("Service: GetAccountsStatus")
	res := make([]*api.GetAccountsStatusResponse_Account, len(s.accountTree.Arr))
	for index, value := range s.accountTree.Arr {
		if value != nil {
			res[index] = &api.GetAccountsStatusResponse_Account{
				Id:        int32(value.Index),
				PublicKey: value.GetPubkeyShow(),
				Balance:   value.Balance.String(),
			}
		}
	}
	return &api.GetAccountsStatusResponse{
		Accounts: res,
	}, nil
}

func (service *Service) DebugDepositExistence(ctx context.Context, req *api.DebugDepositExistenceRequest) (*api.DebugDepositExistenceResponse, error) {
	fmt.Println("Service: DepositExistence")
	addressesFile := helpers.LoadJsonAccounts()
	client := service.client

	auth2, _ := helpers.LoadAuth(addressesFile, client, 2)

	ten64bits := int64(10)
	amount := big.NewInt(ten64bits)
	for i, value := range service.accountTree.Arr {
		if i == 4 {
			break // TODO: hardcode here
		}
		priKey := babyjub.NewRandPrivKey()
		pubKey := priKey.Public()
		//  prepare data
		fromX := utils.ConvertToBytes32(pubKey.Point().X.Bytes())
		fromY := utils.ConvertToBytes32(pubKey.Point().Y.Bytes())
		toX := utils.ConvertToBytes32(value.PubX)
		toY := utils.ConvertToBytes32(value.PubY)
		r8x := utils.ConvertToBytes32([]byte{0})
		r8y := utils.ConvertToBytes32([]byte{0})
		s := utils.ConvertToBytes32([]byte{0})
		tx, err := service.middlewareInstance.Deposit(auth2, fromX, fromY, toX, toY, amount, r8x, r8y, s)
		if err != nil {
			fmt.Println("error call deposit middleware contract")
			log.Fatal(err)
		}
		_ = tx
	}
	return &api.DebugDepositExistenceResponse{
		Res: "Success",
	}, nil
}
