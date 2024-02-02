package main

import (
	"context"
	"flag"
	"fmt"
	"github.com/rs/cors"
	"log"
	"net"
	"net/http"
	"os"
	"zk-rollups/api"
	"zk-rollups/contracts/middleware_contract"
	"zk-rollups/internal/models"
	"zk-rollups/internal/service"

	"github.com/ethereum/go-ethereum/ethclient"
	"github.com/grpc-ecosystem/grpc-gateway/v2/runtime"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
)

const (
	GrpcAddress         = "0.0.0.0:9090"
	GanacheAddressLocal = "ws://localhost:8545"
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

	accountTree, instance, err := DeploySmartContract(client)
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println("Deploy smart contracts successfully")
	if err = RunServer(client, accountTree, instance); err != nil {
		os.Exit(1)
	}
}

func RunServer(client *ethclient.Client, accountTree *models.AccountTree, middlewareInstance *middleware_contract.MiddlewareContract) error {
	listen, err := net.Listen("tcp", GrpcAddress)
	if err != nil {
		return err
	}

	// register service
	grpcServer := grpc.NewServer()
	api.RegisterLayerTwoServiceServer(grpcServer, service.NewService(client, accountTree, middlewareInstance))

	// start server: gRPC
	go func() {
		log.Fatal(grpcServer.Serve(listen))
	}()

	// start proxy: HTTP
	ctx := context.Background()
	ctx, cancel := context.WithCancel(ctx)
	defer cancel()

	// Register gRPC server endpoint
	mux := runtime.NewServeMux()
	opts := []grpc.DialOption{grpc.WithTransportCredentials(insecure.NewCredentials())}
	err = api.RegisterLayerTwoServiceHandlerFromEndpoint(ctx, mux, *grpcServerEndpoint, opts)
	if err != nil {
		return err
	}
	fmt.Println("HTTP server listening on port 8081")

	// add cors
	withCors := cors.New(cors.Options{
		AllowOriginFunc:  func(origin string) bool { return true },
		AllowedMethods:   []string{"GET", "POST", "PATCH", "PUT", "DELETE", "OPTIONS"},
		AllowedHeaders:   []string{"ACCEPT", "Authorization", "Content-Type", "X-CSRF-Token"},
		ExposedHeaders:   []string{"Link"},
		AllowCredentials: true,
		MaxAge:           300,
	}).Handler(mux)

	// Start HTTP server (and proxy calls to gRPC server endpoint)
	return http.ListenAndServe(HttpAddress, withCors)
}
