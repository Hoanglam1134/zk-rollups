package main

import (
	"context"
	"flag"
	"fmt"
	"github.com/ethereum/go-ethereum/ethclient"
	"github.com/grpc-ecosystem/grpc-gateway/runtime"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"log"
	"net"
	"net/http"
	"os"
	"zk-rollups/api"
	"zk-rollups/internal/service"
)

const (
	GrpcAddress         = "0.0.0.0:9090"
	GanacheAddressLocal = "http://localhost:8545"
	HttpAddress         = ":8081"
)

var (
	grpcServerEndpoint = flag.String("grpc-server-endpoint", "localhost:9090", "gRPC server endpoint")
)

func main() {
	client, err := ethclient.Dial(GanacheAddressLocal)
	if err != nil {
		log.Fatal(err)
	}

	if err := RunServer(client); err != nil {
		os.Exit(1)
	}
}

func RunServer(client *ethclient.Client) error {
	listen, err := net.Listen("tcp", GrpcAddress)
	if err != nil {
		return err
	}

	// register service
	grpcServer := grpc.NewServer()
	api.RegisterLayerTwoServiceServer(grpcServer, service.NewService(client))

	// start server: gRPC
	go func() {
		log.Fatal(grpcServer.Serve(listen))
	}()

	// start proxy: HTTP
	var ctx context.Context
	ctx = context.Background()
	ctx, cancel := context.WithCancel(ctx)
	defer cancel()

	// Register gRPC server endpoint
	// Note: Make sure the gRPC server is running properly and accessible
	mux := runtime.NewServeMux()
	opts := []grpc.DialOption{grpc.WithTransportCredentials(insecure.NewCredentials())}
	err = api.RegisterLayerTwoServiceHandlerFromEndpoint(ctx, mux, *grpcServerEndpoint, opts)
	if err != nil {
		return err
	}

	fmt.Println("HTTP server listening on port 8081")
	// Start HTTP server (and proxy calls to gRPC server endpoint)
	return http.ListenAndServe(HttpAddress, mux)
}
