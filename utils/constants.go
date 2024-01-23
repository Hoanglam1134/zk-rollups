package utils

// topic of events Ethereum
const (
	TopicDebugCalled      = "0x766ba33eed9390bf74894ab64d15834eddb4095e00203e303f9377052e41bb69"
	TopicDepositRegister  = "0x1d0df93e9d41caa013439fb3104924ce014d7f34ce7aa77377f4dcac09c4e7c8"
	TopicDepositExistence = "0x045362c160fc977f2e7bf470adfeb18f9cbd59563fa6d529708234815f4f20f8"
	TopicTransfer         = "0xb2a9fcb27927416e8a4cb5a7c4fffa19e0f58f47ab10ce025498baa4cc743ae4"
	TopicWithdraw
)

const (
	NameDepositRegister  = "eDepositRegister"
	NameDepositExistence = "eDepositExistence"
	NameTransfer         = "eTransfer"
	NameWithdraw         = "eWithdraw"
)

const (
	BigTreeHeight = 16
	TreeHeight    = 3
	AccountSize   = 4
)

const (
	RollupSize = 4
)

var HashZeros = [][]byte{
	{1, 1, 1, 1},
	{1, 1, 1, 1},
	{1, 1, 1, 1},
	{1, 1, 1, 1},
}
