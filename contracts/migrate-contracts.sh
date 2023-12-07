#!/bin/bash
GEN_DIR="file_gen"
# start Ganache-cli
ganache --wallet.totalAccounts=20 --wallet.accountKeysPath="$GEN_DIR/accounts.json" --wallet.defaultBalance=1000

