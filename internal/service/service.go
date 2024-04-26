package service

import (
	"github.com/ethereum/go-ethereum/ethclient"
	"zk-rollups/api"
	"zk-rollups/contracts/middleware_contract"
	"zk-rollups/helpers"
	"zk-rollups/internal/models"
)

type Service struct {
	client             *ethclient.Client
	accountTree        *models.AccountTree
	middlewareInstance *middleware_contract.MiddlewareContract
	addressFile        helpers.AddressesFile
	api.UnimplementedLayerTwoServiceServer
}

func NewService(client *ethclient.Client, accountTree *models.AccountTree, middlewareInstance *middleware_contract.MiddlewareContract, addressFile helpers.AddressesFile) *Service {
	return &Service{
		client:             client,
		accountTree:        accountTree,
		middlewareInstance: middlewareInstance,
		addressFile:        addressFile,
	}
}
