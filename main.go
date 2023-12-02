package main

import (
	"fmt"
	"github.com/ethereum/go-ethereum/ethclient"
	"google.golang.org/grpc"
	"log"
	"net"
	"os"
	"zk-rollups/api"
	"zk-rollups/internal/service"
	"zk-rollups/library/server"
)

const (
	ServerAddress = "0.0.0.0:9090"
)

func main() {
	client, err := ethclient.Dial("http://localhost:8545")
	if err != nil {
		log.Fatal(err)
	}

	if err := RunServer(client); err != nil {
		os.Exit(1)
	}
}

func RunServer(client *ethclient.Client) error {
	listen, err := net.Listen("tcp", ServerAddress)
	if err != nil {
		return err
	}

	// register service
	grpcServer := grpc.NewServer()
	api.RegisterLayerTwoServiceServer(grpcServer, service.NewService(client))

	service, err := newService(cfg)
	if err != nil {
		logger.Error(err, "Cannot init server")
		return err
	}
	s, err := server.New(
		server.WithGatewayAddrListen(cfg.Server.HTTP),
		server.WithGrpcAddrListen(cfg.Server.GRPC),
		server.WithServiceServer(service),
	)
	if err != nil {
		logger.Error(err, "Error new server")
		return err
	}

	if err := s.Serve(); err != nil {
		logger.Error(err, "Error start server")
		return err
	}
	return nil

	// start server
	fmt.Println("Server is running on ", ServerAddress)
	return grpcServer.Serve(listen)
}

func newService() (*service.Service, error) {
	db, err := newDB(cfg.WarehouseServiceDB.String())
	if err != nil {
		logger.Error(err, "Error connect database")
		return nil, err
	}
	store := store.NewStore(db, logger)

	// Order Client
	orderClientConnect, err := grpc.DialContext(context.Background(), cfg.OrderServiceAddr, grpc.WithInsecure())
	orderClient := orderApi.NewOrderServiceClient(orderClientConnect)

	// AccountClient
	accountClientConnect, err := grpc.DialContext(context.Background(), cfg.AccountServiceAddr, grpc.WithInsecure())
	accountClient := accountApi.NewAccountServiceClient(accountClientConnect)

	return service.NewService(cfg, logger, store, orderClient, accountClient), nil
}
