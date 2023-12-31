package utils

// topic of events Ethereum
const (
	TopicDebugCalled      = "0x766ba33eed9390bf74894ab64d15834eddb4095e00203e303f9377052e41bb69"
	TopicDepositRegister  = "0xf913a91cb7941f332eb9fb4a863f361fc6430a84a2523d30a925e0f0d834d31d"
	TopicDepositExistence = "0x045362c160fc977f2e7bf470adfeb18f9cbd59563fa6d529708234815f4f20f8"
	TopicTransfer         = "0xb2a9fcb27927416e8a4cb5a7c4fffa19e0f58f47ab10ce025498baa4cc743ae4"
)

const (
	NameDebugCalled      = "dGetString"
	NameDepositRegister  = "eDepositRegister"
	NameDepositExistence = "eDepositExistence"
	NameTransfer         = "eTransfer"
)

const (
	TreeHeight  = 4
	AccountSize = 8
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
