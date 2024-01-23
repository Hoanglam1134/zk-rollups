#!/bin/bash

GEN_DIR="file_gen"

# gen abi for middleware: manually do it
# solc --abi ../Middleware.sol > abi_gen
# solc --bin ../Middleware.sol > bin_gen

# gen go file from abi and bin
abigen --bin=middleware.bin --abi=middleware.abi --pkg=middleware_contract --out=../middleware_contract/middleware_deploy.go
#abigen --bin=mimc.bin --abi=mimc.abi --pkg=mimc_contract --out=../mimc_contract/mimc_deploy.go