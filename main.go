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

	// start server
	fmt.Println("Server is running on ", ServerAddress)
	return grpcServer.Serve(listen)
}
