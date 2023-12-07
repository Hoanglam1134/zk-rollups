GEN_DIR = contracts/file_gen

proto:
	protoc --go_out=. --go_opt=paths=source_relative \
        --go-grpc_out=. --go-grpc_opt=paths=source_relative \
        api/api.proto

proto-gw:
	protoc -I . --grpc-gateway_out=. \
		--grpc-gateway_opt paths=source_relative \
		api/api.proto
ganache:
	ganache --wallet.totalAccounts=20 --wallet.accountKeysPath="$(GEN_DIR)/accounts.json" --wallet.defaultBalance=1000

run:
	go run cmd/*.go