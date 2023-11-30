package service

import "zk-rollups/api"

type Service struct {
	api.UnimplementedLayerTwoServiceServer
}

func NewService() *Service {
	return &Service{}
}
