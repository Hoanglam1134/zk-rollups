package service

import (
	"github.com/ethereum/go-ethereum/ethclient"
	"zk-rollups/api"
)

type Service struct {
	client *ethclient.Client
	api.UnimplementedLayerTwoServiceServer
}

func NewService(client *ethclient.Client) *Service {
	return &Service{
		client: client,
	}
}
