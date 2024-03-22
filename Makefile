GEN_DIR = contracts/file_gen
ABI_DIR = contracts/abigen

proto:
	protoc --go_out=. --go_opt=paths=source_relative \
        --go-grpc_out=. --go-grpc_opt=paths=source_relative \
        api/api.proto

proto-gw:
	protoc -I . --grpc-gateway_out=. \
		--grpc-gateway_opt paths=source_relative \
		api/api.proto

protoc:	proto proto-gw

ganache:
	ganache --wallet.totalAccounts=20 --wallet.accountKeysPath="$(GEN_DIR)/accounts.json" --wallet.defaultBalance=1000000

run:
	go run cmd/*.go

test:
	go run test_fold/main.go

generate-contracts:
	solc --abi --bin --overwrite contracts/Middleware.sol -o $(ABI_DIR)
	abigen --bin=$(ABI_DIR)/Middleware.bin --abi=$(ABI_DIR)/Middleware.abi --pkg=middleware_contract --out=contracts/middleware_contract/middleware_deploy.go