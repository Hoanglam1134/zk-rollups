package main

import (
	"context"
	"fmt"
	"github.com/ethereum/go-ethereum/ethclient"
	"google.golang.org/grpc"
	"log"
	"net"
	"os"
	"zk-rollups/api"
	"zk-rollups/internal/service"
)

const (
	ServerAddress = "0.0.0.0:9090"
)

func main() {
	client, err := ethclient.Dial("http://localhost:8545")
	if err != nil {
		log.Fatal(err)
	}

	// Retrieve the block number
	number, err := client.BlockNumber(context.Background())
	if err != nil {
		log.Fatalf("Error retrieving accounts: %v", err)
	}

	fmt.Println("Get Eth Number Block", number)
	if err := RunServer(); err != nil {
		os.Exit(1)
	}
}

func RunServer() error {
	listen, err := net.Listen("tcp", ServerAddress)
	if err != nil {
		return err
	}

	// register service
	grpcServer := grpc.NewServer()
	api.RegisterLayerTwoServiceServer(grpcServer, service.NewService())

	// start server
	fmt.Println("Server is running on ", ServerAddress)
	return grpcServer.Serve(listen)
}
