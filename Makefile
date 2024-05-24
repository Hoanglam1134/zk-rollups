GEN_DIR = contracts/file_gen
ABI_DIR = contracts/abigen
REGISTER_DIR = circuits/deposit_register
EXISTENCE_DIR = circuits/deposit_existence
BUILD_DIR = build/smart_contract

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
	ganache --wallet.totalAccounts=20 --wallet.accountKeysPath="$(GEN_DIR)/accounts.json" --wallet.defaultBalance=10000

run:
	go run cmd/*.go

test-service:
	go test -v ./internal/service

test-contract:
	go test -v ./cmd

generate-middleware-contracts:
	solc --abi --bin --overwrite contracts/Middleware.sol -o $(ABI_DIR)
	abigen --bin=$(ABI_DIR)/Middleware.bin --abi=$(ABI_DIR)/Middleware.abi --pkg=middleware_contract --out=contracts/middleware_contract/middleware_deploy.go

generate-register-verifier:
	solc --abi --bin --overwrite $(REGISTER_DIR)/$(BUILD_DIR)/verifier.sol -o $(ABI_DIR)/register
	abigen --bin=$(ABI_DIR)/register/Groth16Verifier.bin --abi=$(ABI_DIR)/register/Groth16Verifier.abi --pkg=register_contract --out=contracts/verifier/register_contract/register_verifier_deploy.go

generate-existence-verifier:
	solc --abi --bin --overwrite $(EXISTENCE_DIR)/$(BUILD_DIR)/verifier.sol -o $(ABI_DIR)/existence
	abigen --bin=$(ABI_DIR)/existence/Groth16Verifier.bin --abi=$(ABI_DIR)/existence/Groth16Verifier.abi --pkg=existence_contract --out=contracts/verifier/existence_contract/existence_verifier_deploy.go

circuit-register:
	bash circuits/deposit_register/run.sh