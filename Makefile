proto:
	protoc --go_out=. --go_opt=paths=source_relative \
        --go-grpc_out=. --go-grpc_opt=paths=source_relative \
        api/api.proto

proto-gw:
	protoc -I . --grpc-gateway_out=. \
		--grpc-gateway_opt paths=source_relative \
		api/api.proto
ganache:
	ganache-cli

run:
	go run cmd/*.go