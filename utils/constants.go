package utils

// topic of events Ethereum
const (
	TopicGetString        = "0x766ba33eed9390bf74894ab64d15834eddb4095e00203e303f9377052e41bb69"
	TopicDepositRegister  = "0x1d0df93e9d41caa013439fb3104924ce014d7f34ce7aa77377f4dcac09c4e7c8"
	TopicDepositExistence = "0xfae7f5fe9ee7c362b25572c6cbbf33ee1bdb8ea4e4b73ab8666dfa4f2712e645"
	TopicTransfer         = "0xea187e67c172eb2c3d9190685e5921d1e75e9363cb113adb71816c3af1303008"
	TopicWithdraw         = "0x69e9ae955363731d6e1cd40b361f1db7d5926cc88c7554b40ed23ffc1e90b333"
)

const (
	NameDepositRegister  = "eDepositRegister"
	NameDepositExistence = "eDepositExistence"
	NameTransfer         = "eTransfer"
	NameWithdraw         = "eWithdraw"
	NameGetString        = "dGetString"
)

const (
	BigTreeHeight    = 16
	AccountSize      = 1 << (BigTreeHeight - 1)    // 2^15
	RollupTreeHeight = 3                           // is the height of the rollup tree (use for rollup deposit, transfer, withdraw)
	RollupSize       = 1 << (RollupTreeHeight - 1) // 2^2
)

const (
	EmptyString = ""
	MinusOne    = -1
	ZeroNumber  = 0
	TwoNumber   = 2
)

// Path to Input
const (
	BasePath      = "./circuits"
	InputFileName = "/input.json"
	PathRegister  = BasePath + "/deposit_register" + InputFileName
	PathExistence = BasePath + "/deposit_existence" + InputFileName
	PathTransfer  = BasePath + "/transfer" + InputFileName
	PathWithdraw  = BasePath + "/withdraw" + InputFileName
)
