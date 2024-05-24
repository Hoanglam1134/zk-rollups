package utils

// topic of events Ethereum
const (
	TopicGetString        = "0x766ba33eed9390bf74894ab64d15834eddb4095e00203e303f9377052e41bb69"
	TopicDepositRegister  = "0x751175c6d256080f1dc18961160a34eaea9ed4a1cdfb588965c1e6773f0b1b5d"
	TopicDepositExistence = "0x491577f128894a90b4c9e9030d8c12bb9eef10c882449617c6fce7fc933041f3"
	TopicTransfer         = "0x5e79ad63e9e97283e51f080decc9f9596a07fd0a490fd1ae5bbdba9637618c09"
	TopicWithdraw         = "0x585fdad1bf3a83dd57e4e7e3fa8b91b9b2a9a2b243fa4f5874b0a2fb88fd7115"
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
	Comma       = ","
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
