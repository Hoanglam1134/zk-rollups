package service

import (
	"context"
	"fmt"
	"zk-rollups/api"
)

func (s *Service) GetBlockNumber(ctx context.Context, request *api.GetBlockNumberRequest) (*api.GetBlockNumberResponse, error) {
	fmt.Println("GetBlockNumber called")
	number, err := s.client.BlockNumber(ctx)
	if err != nil {
		return nil, err
	}
	return &api.GetBlockNumberResponse{Number: int32(number)}, nil
}

func (s *Service) ProcessDeposit(request *api.ProcessBlockRequest) (*api.ProcessBlockResponse, error) {
	fmt.Println("ProcessDeposit called")
	return nil, nil
}
