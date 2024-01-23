// Code generated - DO NOT EDIT.
// This file is a generated binding and any manual changes will be lost.

package middleware_contract

import (
	"errors"
	"math/big"
	"strings"

	ethereum "github.com/ethereum/go-ethereum"
	"github.com/ethereum/go-ethereum/accounts/abi"
	"github.com/ethereum/go-ethereum/accounts/abi/bind"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/core/types"
	"github.com/ethereum/go-ethereum/event"
)

// Reference imports to suppress errors if they are not otherwise used.
var (
	_ = errors.New
	_ = big.NewInt
	_ = strings.NewReader
	_ = ethereum.NotFound
	_ = bind.Bind
	_ = common.Big1
	_ = types.BloomLookup
	_ = event.NewSubscription
	_ = abi.ConvertType
)

// MiddlewareContractMetaData contains all meta data concerning the MiddlewareContract contract.
var MiddlewareContractMetaData = &bind.MetaData{
	ABI: "[{\"inputs\":[{\"internalType\":\"address\",\"name\":\"_mimcContractAddress\",\"type\":\"address\"},{\"internalType\":\"uint256\",\"name\":\"initializationAccountRoot\",\"type\":\"uint256\"}],\"stateMutability\":\"nonpayable\",\"type\":\"constructor\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"bool\",\"name\":\"state\",\"type\":\"bool\"}],\"name\":\"dDebug\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"address\",\"name\":\"addr\",\"type\":\"address\"}],\"name\":\"dGetAddress\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"bool\",\"name\":\"b\",\"type\":\"bool\"}],\"name\":\"dGetBool\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"bytes20\",\"name\":\"addr\",\"type\":\"bytes20\"}],\"name\":\"dGetBytes20\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"string\",\"name\":\"str\",\"type\":\"string\"}],\"name\":\"dGetString\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"u\",\"type\":\"uint256\"}],\"name\":\"dGetUint\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"value\",\"type\":\"uint256\"}],\"name\":\"dGetUint256\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"uint256[]\",\"name\":\"arr\",\"type\":\"uint256[]\"}],\"name\":\"dGetUint256Array\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"fromX\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"fromY\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"toX\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"toY\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"r8x\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"r8y\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"s\",\"type\":\"uint256\"}],\"name\":\"eDepositExistence\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"fromX\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"fromY\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"toX\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"toY\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"r8x\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"r8y\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"s\",\"type\":\"uint256\"}],\"name\":\"eDepositRegister\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"fromX\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"fromY\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"toX\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"toY\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"r8x\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"r8y\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"s\",\"type\":\"uint256\"}],\"name\":\"eTransfer\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"fromX\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"fromY\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"toX\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"toY\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"r8x\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"r8y\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"s\",\"type\":\"uint256\"}],\"name\":\"eWithdraw\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"bool\",\"name\":\"b\",\"type\":\"bool\"}],\"name\":\"sDepositRegister\",\"type\":\"event\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"fromX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"fromY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8x\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8y\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"s\",\"type\":\"uint256\"}],\"name\":\"_depositExistence\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"fromX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"fromY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8x\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8y\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"s\",\"type\":\"uint256\"}],\"name\":\"_depositRegister\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"fromX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"fromY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8x\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8y\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"s\",\"type\":\"uint256\"}],\"name\":\"deposit\",\"outputs\":[],\"stateMutability\":\"payable\",\"type\":\"function\"},{\"inputs\":[],\"name\":\"mimc\",\"outputs\":[{\"internalType\":\"contractIMiMC\",\"name\":\"\",\"type\":\"address\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256[]\",\"name\":\"arr\",\"type\":\"uint256[]\"}],\"name\":\"mimcMultiHash\",\"outputs\":[{\"internalType\":\"uint256\",\"name\":\"\",\"type\":\"uint256\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"fromX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"fromY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8x\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8y\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"s\",\"type\":\"uint256\"}],\"name\":\"transfer\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"fromX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"fromY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8x\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8y\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"s\",\"type\":\"uint256\"}],\"name\":\"withdraw\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"}]",
	Bin: "0x60806040527f30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000015f556040518061014001604052807fd16b23145b3ff136a467325badad0cc2c5d8ea604ed0dc9b77dae7a328d5f11981526020017f12a04951f1c189982c5f02331adbcd700c682a946a143d2bf4d88bb74261151681526020017f61b703991a5b7545f478fc1925412aaea4f03b059abb167f522124bbcaa69d0081526020017f233854b5fe8f01f97ad392c3c1b52a1cc34239fade343b9b04e6c09d2617b10581526020017f3611a2a4c38f96ea24b255159d6589655deb10f9a34f63dbac36e7037b875d0b81526020017f22bc177f448a1d361e2ecb94850cc8f1f16e14f4873784e06b0ff3ddb997002681526020017f65d611ca0d8d4f8b342c47c2e210b64df0916487cb7d886086b3fc150cc7040c81526020017ff41758044e3119f692dfd8cd2d38f69e46dc1e332f8f85bb78fa2084685fb11b81526020017f686244dade625871f3dcdaf448fe6b1833653b79bf1de9d3a7b93111ae3fc90481526020017fca83e72ddcd15a0ece2dc9c3ae354ef75b13999e405e1b243d5f502c0afe4f16815250600190600a620001bf929190620002e5565b50348015620001cc575f80fd5b50604051620027c7380380620027c78339818101604052810190620001f29190620003e4565b81600e5f6101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff1602179055505f6012819055505f60138190555033600d5f6101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550600c81908060018154018082558091505060019003905f5260205f20015f90919091909150557f766ba33eed9390bf74894ab64d15834eddb4095e00203e303f9377052e41bb69604051620002d59062000487565b60405180910390a15050620004a7565b82600a810192821562000317579160200282015b8281111562000316578251825591602001919060010190620002f9565b5b5090506200032691906200032a565b5090565b5b8082111562000343575f815f9055506001016200032b565b5090565b5f80fd5b5f73ffffffffffffffffffffffffffffffffffffffff82169050919050565b5f62000376826200034b565b9050919050565b62000388816200036a565b811462000393575f80fd5b50565b5f81519050620003a6816200037d565b92915050565b5f819050919050565b620003c081620003ac565b8114620003cb575f80fd5b50565b5f81519050620003de81620003b5565b92915050565b5f8060408385031215620003fd57620003fc62000347565b5b5f6200040c8582860162000396565b92505060206200041f85828601620003ce565b9150509250929050565b5f82825260208201905092915050565b7f4d6964646c6577617265206973206465706c6f796564000000000000000000005f82015250565b5f6200046f60168362000429565b91506200047c8262000439565b602082019050919050565b5f6020820190508181035f830152620004a08162000461565b9050919050565b61231280620004b55f395ff3fe608060405260043610610090575f3560e01c806376385cc31161005857806376385cc31461014c578063be722daf14610176578063ce04cbb3146101b2578063d5d31676146101ce578063ea5ef999146101f657610090565b80630dbdbef0146100945780635998ee74146100aa5780635caba884146100c05780635fe8c13b146100e857806365ca132614610124575b5f80fd5b34801561009f575f80fd5b506100a861021e565b005b3480156100b5575f80fd5b506100be610255565b005b3480156100cb575f80fd5b506100e660048036038101906100e191906117a1565b6102aa565b005b3480156100f3575f80fd5b5061010e600480360381019061010991906118b9565b610733565b60405161011b9190611939565b60405180910390f35b34801561012f575f80fd5b5061014a600480360381019061014591906117a1565b610ca2565b005b348015610157575f80fd5b50610160610e36565b60405161016d91906119cc565b60405180910390f35b348015610181575f80fd5b5061019c60048036038101906101979190611b31565b610e5b565b6040516101a99190611b87565b60405180910390f35b6101cc60048036038101906101c791906117a1565b610f99565b005b3480156101d9575f80fd5b506101f460048036038101906101ef91906118b9565b6110a1565b005b348015610201575f80fd5b5061021c600480360381019061021791906117a1565b611450565b005b7f766ba33eed9390bf74894ab64d15834eddb4095e00203e303f9377052e41bb6960405161024b90611c20565b60405180910390a1565b7f6d6933b127aa9e6b219cadc33b8f72b9d6528ae4397fc9da80cbd210eb970d49600f5f8154811061028a57610289611c3e565b5b905f5260205f2001546040516102a09190611c7a565b60405180910390a1565b600160125f8282546102bc9190611cc0565b925050819055505f600467ffffffffffffffff8111156102df576102de6119f9565b5b60405190808252806020026020018201604052801561030d5781602001602082028036833780820191505090505b509050865f1c815f8151811061032657610325611c3e565b5b602002602001018181525050855f1c8160018151811061034957610348611c3e565b5b602002602001018181525050848160028151811061036a57610369611c3e565b5b6020026020010181815250505f8160038151811061038b5761038a611c3e565b5b6020026020010181815250505f6103a182610e5b565b90505f600667ffffffffffffffff8111156103bf576103be6119f9565b5b6040519080825280602002602001820160405280156103ed5781602001602082028036833780820191505090505b5090508a5f1c815f8151811061040657610405611c3e565b5b602002602001018181525050895f1c8160018151811061042957610428611c3e565b5b602002602001018181525050885f1c8160028151811061044c5761044b611c3e565b5b602002602001018181525050875f1c8160038151811061046f5761046e611c3e565b5b6020026020010181815250505f816004815181106104905761048f611c3e565b5b60200260200101818152505086816005815181106104b1576104b0611c3e565b5b6020026020010181815250505f6104c782610e5b565b90507ff913a91cb7941f332eb9fb4a863f361fc6430a84a2523d30a925e0f0d834d31d8c8c8c8c8c8c8c8c604051610506989796959493929190611cf3565b60405180910390a15f8390505f8290505f60125490505b5f60028261052b9190611d9c565b036106d25760028161053d9190611dcc565b90505f600267ffffffffffffffff81111561055b5761055a6119f9565b5b6040519080825280602002602001820160405280156105895781602001602082028036833780820191505090505b509050600f6001600f805490506105a09190611dfc565b815481106105b1576105b0611c3e565b5b905f5260205f2001545f1c815f815181106105cf576105ce611c3e565b5b60200260200101818152505083816001815181106105f0576105ef611c3e565b5b602002602001018181525050600f80548061060e5761060d611e2f565b5b600190038181905f5260205f20015f9055905561062a81610e5b565b9350601060016010805490506106409190611dfc565b8154811061065157610650611c3e565b5b905f5260205f2001545f1c815f8151811061066f5761066e611c3e565b5b60200260200101818152505082816001815181106106905761068f611c3e565b5b60200260200101818152505060108054806106ae576106ad611e2f565b5b600190038181905f5260205f20015f905590556106ca81610e5b565b92505061051d565b600f835f1b908060018154018082558091505060019003905f5260205f20015f90919091909150556010825f1b908060018154018082558091505060019003905f5260205f20015f9091909190915055505050505050505050505050505050565b5f610c42565b7f30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd478110610768575f805260205ff35b50565b5f60405183815284602082015285604082015260408160608360076107d05a03fa91508161079b575f805260205ff35b825160408201526020830151606082015260408360808360066107d05a03fa9150816107c9575f805260205ff35b505050505050565b5f608086015f87017f2d7aef4dacbf074b67b0435003beab901c46d7148623c9743d96f771905676d181527e38ce559c0e261a91fa95a5b9529b346f5a9c58f5a68f5fd288b45576223dff60208201526108705f8801357f06eda17b868255463022b53906d5ab86ffd45bc4863e06c2749f1215f6feab527f06b70ceb3d4920d983c59e4ed60465546e203ec9ef2fd0908d28837a33f94a7a8461076b565b6108c060208801357f16bea1b4cb21a097bcc8d2bc72dfc5bb883b45e9ed04579c6264df705203a9b57f04d8e0d74a9b1442b8ad8f429fd4ca36f160d4fb8c2ebc59bacc09ee66b09e378461076b565b61091060408801357f0204f4ace627c47608466c9c583f56f9a5584b1228e933a3e905bad0801c94957f1d0d008e53a0927c1cf3d548f9e3dcb63901389de34b0c00528bd4ca1b74bc108461076b565b61096060608801357f212d13a2a62a7388c373fe480f95fd982a8900931adeb713f5cd463f6d0ddc917f20ef3224f03062c7a1068be0c12e523457bc1be72ea2775e0532c0d640417f208461076b565b833582527f30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd4760208501357f30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd4703066020830152843560408301526020850135606083015260408501356080830152606085013560a08301527f05ba24cecf2444285b0dff3e66bf64cae51ad7cc7e88cac30eb7d0684d4d4f8860c08301527f0ff2df766d5153e77d185c2733928d16e23944c9b2dfaf312ee95c06babc76e060e08301527f0c0a54352f1468dbb9dedc826075265ff2e3e00805965d8b7daf0a794757b7036101008301527f2ac605bb9c1eb01a8b6b34e5f77b8e126869d5313e7a8c64f7a74231dfe00c8f6101208301527f2f68e3b4505a2774d4661a51c4a180d8c5fd226d98ae824692ee64d3104188076101408301527f1d253c753f5ef0678a6c8664868f8ab0e98340bd8f5292d88570036ec197b7026101608301525f88015161018083015260205f018801516101a08301527f198e9393920d483a7260bfb731fb5d25f1aa493335a9e71297e485b7aef312c26101c08301527f1800deef121f1e76426a00665e5c4479674322d4f75edadd46debd5cd992f6ed6101e08301527f090689d0585ff075ec9e99ad690c3395bc4b313370b38ef355acdadcd122975b6102008301527f12c85ea5db8c6deb4aab71808dcb408fe3d1e7690c43d37b4ce6cc0166fa7daa610220830152853561024083015260208601356102608301527f056dd6dff00cc7e0eef27b7d4295df9ca4d8d59a623690f150ba41ed9fc629a26102808301527f2dceedf7b148f2b00bab09301b399f6036ff77990cee962a413268d6487f708f6102a08301527f197a282db166d94c67c81ba6cadb8c416c2816a7638d8035ecbc3ff5030b9c026102c08301527f0da6c6b2c981f5493e96373af515ae54411aa9047a25964de97f322e58d0eccc6102e08301526020826103008460086107d05a03fa82518116935050505095945050505050565b6040516103808101604052610c595f840135610739565b610c666020840135610739565b610c736040840135610739565b610c806060840135610739565b610c8d6080840135610739565b610c9a818486888a6107d1565b805f5260205ff35b5f60608989604051602001610cb8929190611e7c565b60405160208183030381529060405280519060200120901b60601c90505f60608888604051602001610ceb929190611e7c565b60405160208183030381529060405280519060200120901b60601c9050600b5f8273ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f9054906101000a900460ff168015610da45750600b5f8373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f9054906101000a900460ff165b610de4577f766ba33eed9390bf74894ab64d15834eddb4095e00203e303f9377052e41bb69604051610dd590611f17565b60405180910390a15050610e2c565b7fb2a9fcb27927416e8a4cb5a7c4fffa19e0f58f47ab10ce025498baa4cc743ae48a8a8a8a8a8a8a8a604051610e21989796959493929190611cf3565b60405180910390a150505b5050505050505050565b600e5f9054906101000a900473ffffffffffffffffffffffffffffffffffffffff1681565b5f805f90505f5b8351811015610f8f575f545f54858381518110610e8257610e81611c3e565b5b6020026020010151610e949190611d9c565b5f54600e5f9054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663d15ca1095f54898781518110610ee857610ee7611c3e565b5b6020026020010151610efa9190611d9c565b876040518363ffffffff1660e01b8152600401610f18929190611f35565b602060405180830381865afa158015610f33573d5f803e3d5ffd5b505050506040513d601f19601f82011682018060405250810190610f579190611f70565b85610f629190611cc0565b610f6c9190611d9c565b610f769190611cc0565b610f809190611d9c565b91508080600101915050610e62565b5080915050919050565b5f60608787604051602001610faf929190611e7c565b60405160208183030381529060405280519060200120901b60601c9050600b5f8273ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f9054906101000a900460ff16156110305761102b8989898989898989611450565b611096565b6001600b5f8373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff02191690831515021790555061109589898989898989896102aa565b5b505050505050505050565b805f600481106110b4576110b3611c3e565b5b60200201355f1b60105f815481106110cf576110ce611c3e565b5b905f5260205f20015414611118576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161110f9061200b565b60405180910390fd5b8060016004811061112c5761112b611c3e565b5b60200201355f1b600f5f8154811061114757611146611c3e565b5b905f5260205f20015414611190576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161118790612073565b60405180910390fd5b806002600481106111a4576111a3611c3e565b5b60200201355f1b600c6001600c805490506111bf9190611dfc565b815481106111d0576111cf611c3e565b5b905f5260205f20015414611219576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401611210906120db565b60405180910390fd5b3073ffffffffffffffffffffffffffffffffffffffff16635fe8c13b858585856040518563ffffffff1660e01b815260040161125894939291906121da565b602060405180830381865afa158015611273573d5f803e3d5ffd5b505050506040513d601f19601f820116820180604052508101906112979190612249565b61129f575f80fd5b600c816003600481106112b5576112b4611c3e565b5b60200201355f1b908060018154018082558091505060019003905f5260205f20015f90919091909150555f5b60016010805490506112f39190611dfc565b8160ff1610156113ae57601060018261130c9190612280565b60ff16815481106113205761131f611c3e565b5b905f5260205f20015460108260ff16815481106113405761133f611c3e565b5b905f5260205f200181905550600f60018261135b9190612280565b60ff168154811061136f5761136e611c3e565b5b905f5260205f200154600f8260ff168154811061138f5761138e611c3e565b5b905f5260205f20018190555080806113a6906122b4565b9150506112e1565b5060108054806113c1576113c0611e2f565b5b600190038181905f5260205f20015f90559055600f8054806113e6576113e5611e2f565b5b600190038181905f5260205f20015f90559055600460125f82825461140b9190611dfc565b925050819055507f306c072e846faecd9b6260ac4eb684d0b68ad26bd868bc2ff807e01e0550a5ee60016040516114429190611939565b60405180910390a150505050565b600160135f8282546114629190611cc0565b925050819055505f600667ffffffffffffffff811115611485576114846119f9565b5b6040519080825280602002602001820160405280156114b35781602001602082028036833780820191505090505b509050885f1c815f815181106114cc576114cb611c3e565b5b602002602001018181525050875f1c816001815181106114ef576114ee611c3e565b5b602002602001018181525050865f1c8160028151811061151257611511611c3e565b5b602002602001018181525050855f1c8160038151811061153557611534611c3e565b5b6020026020010181815250505f8160048151811061155657611555611c3e565b5b602002602001018181525050848160058151811061157757611576611c3e565b5b6020026020010181815250505f61158d82610e5b565b90507f045362c160fc977f2e7bf470adfeb18f9cbd59563fa6d529708234815f4f20f88a8a8a8a8a8a8a8a6040516115cc989796959493929190611cf3565b60405180910390a15f8190505f60135490505b5f6002826115ed9190611d9c565b036116f4576002816115ff9190611dcc565b90505f600267ffffffffffffffff81111561161d5761161c6119f9565b5b60405190808252806020026020018201604052801561164b5781602001602082028036833780820191505090505b509050601160016011805490506116629190611dfc565b8154811061167357611672611c3e565b5b905f5260205f2001545f1c815f8151811061169157611690611c3e565b5b60200260200101818152505082816001815181106116b2576116b1611c3e565b5b60200260200101818152505060118054806116d0576116cf611e2f565b5b600190038181905f5260205f20015f905590556116ec81610e5b565b9250506115df565b6011825f1b908060018154018082558091505060019003905f5260205f20015f9091909190915055505050505050505050505050565b5f604051905090565b5f80fd5b5f80fd5b5f819050919050565b61174d8161173b565b8114611757575f80fd5b50565b5f8135905061176881611744565b92915050565b5f819050919050565b6117808161176e565b811461178a575f80fd5b50565b5f8135905061179b81611777565b92915050565b5f805f805f805f80610100898b0312156117be576117bd611733565b5b5f6117cb8b828c0161175a565b98505060206117dc8b828c0161175a565b97505060406117ed8b828c0161175a565b96505060606117fe8b828c0161175a565b955050608061180f8b828c0161178d565b94505060a06118208b828c0161175a565b93505060c06118318b828c0161175a565b92505060e06118428b828c0161175a565b9150509295985092959890939650565b5f80fd5b5f8190508260206002028201111561187157611870611852565b5b92915050565b5f8190508260406002028201111561189257611891611852565b5b92915050565b5f819050826020600402820111156118b3576118b2611852565b5b92915050565b5f805f8061018085870312156118d2576118d1611733565b5b5f6118df87828801611856565b94505060406118f087828801611877565b93505060c061190187828801611856565b92505061010061191387828801611898565b91505092959194509250565b5f8115159050919050565b6119338161191f565b82525050565b5f60208201905061194c5f83018461192a565b92915050565b5f73ffffffffffffffffffffffffffffffffffffffff82169050919050565b5f819050919050565b5f61199461198f61198a84611952565b611971565b611952565b9050919050565b5f6119a58261197a565b9050919050565b5f6119b68261199b565b9050919050565b6119c6816119ac565b82525050565b5f6020820190506119df5f8301846119bd565b92915050565b5f80fd5b5f601f19601f8301169050919050565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52604160045260245ffd5b611a2f826119e9565b810181811067ffffffffffffffff82111715611a4e57611a4d6119f9565b5b80604052505050565b5f611a6061172a565b9050611a6c8282611a26565b919050565b5f67ffffffffffffffff821115611a8b57611a8a6119f9565b5b602082029050602081019050919050565b5f611aae611aa984611a71565b611a57565b90508083825260208201905060208402830185811115611ad157611ad0611852565b5b835b81811015611afa5780611ae6888261178d565b845260208401935050602081019050611ad3565b5050509392505050565b5f82601f830112611b1857611b176119e5565b5b8135611b28848260208601611a9c565b91505092915050565b5f60208284031215611b4657611b45611733565b5b5f82013567ffffffffffffffff811115611b6357611b62611737565b5b611b6f84828501611b04565b91505092915050565b611b818161176e565b82525050565b5f602082019050611b9a5f830184611b78565b92915050565b5f82825260208201905092915050565b7f4d6964646c6577617265206973206465706c6f7965642c20616c736f2c2064655f8201527f6275672069732063616c6c65643a200000000000000000000000000000000000602082015250565b5f611c0a602f83611ba0565b9150611c1582611bb0565b604082019050919050565b5f6020820190508181035f830152611c3781611bfe565b9050919050565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52603260045260245ffd5b611c748161173b565b82525050565b5f602082019050611c8d5f830184611c6b565b92915050565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52601160045260245ffd5b5f611cca8261176e565b9150611cd58361176e565b9250828201905080821115611ced57611cec611c93565b5b92915050565b5f61010082019050611d075f83018b611c6b565b611d14602083018a611c6b565b611d216040830189611c6b565b611d2e6060830188611c6b565b611d3b6080830187611b78565b611d4860a0830186611c6b565b611d5560c0830185611c6b565b611d6260e0830184611c6b565b9998505050505050505050565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52601260045260245ffd5b5f611da68261176e565b9150611db18361176e565b925082611dc157611dc0611d6f565b5b828206905092915050565b5f611dd68261176e565b9150611de18361176e565b925082611df157611df0611d6f565b5b828204905092915050565b5f611e068261176e565b9150611e118361176e565b9250828203905081811115611e2957611e28611c93565b5b92915050565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52603160045260245ffd5b5f819050919050565b611e76611e718261173b565b611e5c565b82525050565b5f611e878285611e65565b602082019150611e978284611e65565b6020820191508190509392505050565b7f53656e646572206f72207265636569766572206973206e6f74206578697374655f8201527f6400000000000000000000000000000000000000000000000000000000000000602082015250565b5f611f01602183611ba0565b9150611f0c82611ea7565b604082019050919050565b5f6020820190508181035f830152611f2e81611ef5565b9050919050565b5f604082019050611f485f830185611b78565b611f556020830184611b78565b9392505050565b5f81519050611f6a81611777565b92915050565b5f60208284031215611f8557611f84611733565b5b5f611f9284828501611f5c565b91505092915050565b7f4465706f736974205472616e73616374696f6e732061726520696e76616c69645f8201527f2100000000000000000000000000000000000000000000000000000000000000602082015250565b5f611ff5602183611ba0565b915061200082611f9b565b604082019050919050565b5f6020820190508181035f83015261202281611fe9565b9050919050565b7f4e6577204163636f756e74732061726520696e76616c696400000000000000005f82015250565b5f61205d601883611ba0565b915061206882612029565b602082019050919050565b5f6020820190508181035f83015261208a81612051565b9050919050565b7f5468652073746174657320646f206e6f74206d617463680000000000000000005f82015250565b5f6120c5601783611ba0565b91506120d082612091565b602082019050919050565b5f6020820190508181035f8301526120f2816120b9565b9050919050565b82818337505050565b61210e604083836120f9565b5050565b5f60029050919050565b5f81905092915050565b5f819050919050565b61213b604083836120f9565b5050565b5f61214a838361212f565b60408301905092915050565b5f82905092915050565b5f604082019050919050565b61217581612112565b61217f818461211c565b925061218a82612126565b805f5b838110156121c25761219f8284612156565b6121a9878261213f565b96506121b483612160565b92505060018101905061218d565b505050505050565b6121d6608083836120f9565b5050565b5f610180820190506121ee5f830187612102565b6121fb604083018661216c565b61220860c0830185612102565b6122166101008301846121ca565b95945050505050565b6122288161191f565b8114612232575f80fd5b50565b5f815190506122438161221f565b92915050565b5f6020828403121561225e5761225d611733565b5b5f61226b84828501612235565b91505092915050565b5f60ff82169050919050565b5f61228a82612274565b915061229583612274565b9250828201905060ff8111156122ae576122ad611c93565b5b92915050565b5f6122be82612274565b915060ff82036122d1576122d0611c93565b5b60018201905091905056fea2646970667358221220404240a9fb0dbb5444e5daf06130af2f28c7e3265f486dee360d03b7258dc61364736f6c63430008170033",
}

// MiddlewareContractABI is the input ABI used to generate the binding from.
// Deprecated: Use MiddlewareContractMetaData.ABI instead.
var MiddlewareContractABI = MiddlewareContractMetaData.ABI

// MiddlewareContractBin is the compiled bytecode used for deploying new contracts.
// Deprecated: Use MiddlewareContractMetaData.Bin instead.
var MiddlewareContractBin = MiddlewareContractMetaData.Bin

// DeployMiddlewareContract deploys a new Ethereum contract, binding an instance of MiddlewareContract to it.
func DeployMiddlewareContract(auth *bind.TransactOpts, backend bind.ContractBackend, _mimcContractAddress common.Address, initializationAccountRoot *big.Int) (common.Address, *types.Transaction, *MiddlewareContract, error) {
	parsed, err := MiddlewareContractMetaData.GetAbi()
	if err != nil {
		return common.Address{}, nil, nil, err
	}
	if parsed == nil {
		return common.Address{}, nil, nil, errors.New("GetABI returned nil")
	}

	address, tx, contract, err := bind.DeployContract(auth, *parsed, common.FromHex(MiddlewareContractBin), backend, _mimcContractAddress, initializationAccountRoot)
	if err != nil {
		return common.Address{}, nil, nil, err
	}
	return address, tx, &MiddlewareContract{MiddlewareContractCaller: MiddlewareContractCaller{contract: contract}, MiddlewareContractTransactor: MiddlewareContractTransactor{contract: contract}, MiddlewareContractFilterer: MiddlewareContractFilterer{contract: contract}}, nil
}

// MiddlewareContract is an auto generated Go binding around an Ethereum contract.
type MiddlewareContract struct {
	MiddlewareContractCaller     // Read-only binding to the contract
	MiddlewareContractTransactor // Write-only binding to the contract
	MiddlewareContractFilterer   // Log filterer for contract events
}

// MiddlewareContractCaller is an auto generated read-only Go binding around an Ethereum contract.
type MiddlewareContractCaller struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// MiddlewareContractTransactor is an auto generated write-only Go binding around an Ethereum contract.
type MiddlewareContractTransactor struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// MiddlewareContractFilterer is an auto generated log filtering Go binding around an Ethereum contract events.
type MiddlewareContractFilterer struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// MiddlewareContractSession is an auto generated Go binding around an Ethereum contract,
// with pre-set call and transact options.
type MiddlewareContractSession struct {
	Contract     *MiddlewareContract // Generic contract binding to set the session for
	CallOpts     bind.CallOpts       // Call options to use throughout this session
	TransactOpts bind.TransactOpts   // Transaction auth options to use throughout this session
}

// MiddlewareContractCallerSession is an auto generated read-only Go binding around an Ethereum contract,
// with pre-set call options.
type MiddlewareContractCallerSession struct {
	Contract *MiddlewareContractCaller // Generic contract caller binding to set the session for
	CallOpts bind.CallOpts             // Call options to use throughout this session
}

// MiddlewareContractTransactorSession is an auto generated write-only Go binding around an Ethereum contract,
// with pre-set transact options.
type MiddlewareContractTransactorSession struct {
	Contract     *MiddlewareContractTransactor // Generic contract transactor binding to set the session for
	TransactOpts bind.TransactOpts             // Transaction auth options to use throughout this session
}

// MiddlewareContractRaw is an auto generated low-level Go binding around an Ethereum contract.
type MiddlewareContractRaw struct {
	Contract *MiddlewareContract // Generic contract binding to access the raw methods on
}

// MiddlewareContractCallerRaw is an auto generated low-level read-only Go binding around an Ethereum contract.
type MiddlewareContractCallerRaw struct {
	Contract *MiddlewareContractCaller // Generic read-only contract binding to access the raw methods on
}

// MiddlewareContractTransactorRaw is an auto generated low-level write-only Go binding around an Ethereum contract.
type MiddlewareContractTransactorRaw struct {
	Contract *MiddlewareContractTransactor // Generic write-only contract binding to access the raw methods on
}

// NewMiddlewareContract creates a new instance of MiddlewareContract, bound to a specific deployed contract.
func NewMiddlewareContract(address common.Address, backend bind.ContractBackend) (*MiddlewareContract, error) {
	contract, err := bindMiddlewareContract(address, backend, backend, backend)
	if err != nil {
		return nil, err
	}
	return &MiddlewareContract{MiddlewareContractCaller: MiddlewareContractCaller{contract: contract}, MiddlewareContractTransactor: MiddlewareContractTransactor{contract: contract}, MiddlewareContractFilterer: MiddlewareContractFilterer{contract: contract}}, nil
}

// NewMiddlewareContractCaller creates a new read-only instance of MiddlewareContract, bound to a specific deployed contract.
func NewMiddlewareContractCaller(address common.Address, caller bind.ContractCaller) (*MiddlewareContractCaller, error) {
	contract, err := bindMiddlewareContract(address, caller, nil, nil)
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractCaller{contract: contract}, nil
}

// NewMiddlewareContractTransactor creates a new write-only instance of MiddlewareContract, bound to a specific deployed contract.
func NewMiddlewareContractTransactor(address common.Address, transactor bind.ContractTransactor) (*MiddlewareContractTransactor, error) {
	contract, err := bindMiddlewareContract(address, nil, transactor, nil)
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractTransactor{contract: contract}, nil
}

// NewMiddlewareContractFilterer creates a new log filterer instance of MiddlewareContract, bound to a specific deployed contract.
func NewMiddlewareContractFilterer(address common.Address, filterer bind.ContractFilterer) (*MiddlewareContractFilterer, error) {
	contract, err := bindMiddlewareContract(address, nil, nil, filterer)
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractFilterer{contract: contract}, nil
}

// bindMiddlewareContract binds a generic wrapper to an already deployed contract.
func bindMiddlewareContract(address common.Address, caller bind.ContractCaller, transactor bind.ContractTransactor, filterer bind.ContractFilterer) (*bind.BoundContract, error) {
	parsed, err := MiddlewareContractMetaData.GetAbi()
	if err != nil {
		return nil, err
	}
	return bind.NewBoundContract(address, *parsed, caller, transactor, filterer), nil
}

// Call invokes the (constant) contract method with params as input values and
// sets the output to result. The result type might be a single field for simple
// returns, a slice of interfaces for anonymous returns and a struct for named
// returns.
func (_MiddlewareContract *MiddlewareContractRaw) Call(opts *bind.CallOpts, result *[]interface{}, method string, params ...interface{}) error {
	return _MiddlewareContract.Contract.MiddlewareContractCaller.contract.Call(opts, result, method, params...)
}

// Transfer initiates a plain transaction to move funds to the contract, calling
// its default method if one is available.
func (_MiddlewareContract *MiddlewareContractRaw) Transfer(opts *bind.TransactOpts) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.MiddlewareContractTransactor.contract.Transfer(opts)
}

// Transact invokes the (paid) contract method with params as input values.
func (_MiddlewareContract *MiddlewareContractRaw) Transact(opts *bind.TransactOpts, method string, params ...interface{}) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.MiddlewareContractTransactor.contract.Transact(opts, method, params...)
}

// Call invokes the (constant) contract method with params as input values and
// sets the output to result. The result type might be a single field for simple
// returns, a slice of interfaces for anonymous returns and a struct for named
// returns.
func (_MiddlewareContract *MiddlewareContractCallerRaw) Call(opts *bind.CallOpts, result *[]interface{}, method string, params ...interface{}) error {
	return _MiddlewareContract.Contract.contract.Call(opts, result, method, params...)
}

// Transfer initiates a plain transaction to move funds to the contract, calling
// its default method if one is available.
func (_MiddlewareContract *MiddlewareContractTransactorRaw) Transfer(opts *bind.TransactOpts) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.contract.Transfer(opts)
}

// Transact invokes the (paid) contract method with params as input values.
func (_MiddlewareContract *MiddlewareContractTransactorRaw) Transact(opts *bind.TransactOpts, method string, params ...interface{}) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.contract.Transact(opts, method, params...)
}

// Mimc is a free data retrieval call binding the contract method 0x76385cc3.
//
// Solidity: function mimc() view returns(address)
func (_MiddlewareContract *MiddlewareContractCaller) Mimc(opts *bind.CallOpts) (common.Address, error) {
	var out []interface{}
	err := _MiddlewareContract.contract.Call(opts, &out, "mimc")

	if err != nil {
		return *new(common.Address), err
	}

	out0 := *abi.ConvertType(out[0], new(common.Address)).(*common.Address)

	return out0, err

}

// Mimc is a free data retrieval call binding the contract method 0x76385cc3.
//
// Solidity: function mimc() view returns(address)
func (_MiddlewareContract *MiddlewareContractSession) Mimc() (common.Address, error) {
	return _MiddlewareContract.Contract.Mimc(&_MiddlewareContract.CallOpts)
}

// Mimc is a free data retrieval call binding the contract method 0x76385cc3.
//
// Solidity: function mimc() view returns(address)
func (_MiddlewareContract *MiddlewareContractCallerSession) Mimc() (common.Address, error) {
	return _MiddlewareContract.Contract.Mimc(&_MiddlewareContract.CallOpts)
}

// MimcMultiHash is a free data retrieval call binding the contract method 0xbe722daf.
//
// Solidity: function mimcMultiHash(uint256[] arr) view returns(uint256)
func (_MiddlewareContract *MiddlewareContractCaller) MimcMultiHash(opts *bind.CallOpts, arr []*big.Int) (*big.Int, error) {
	var out []interface{}
	err := _MiddlewareContract.contract.Call(opts, &out, "mimcMultiHash", arr)

	if err != nil {
		return *new(*big.Int), err
	}

	out0 := *abi.ConvertType(out[0], new(*big.Int)).(**big.Int)

	return out0, err

}

// MimcMultiHash is a free data retrieval call binding the contract method 0xbe722daf.
//
// Solidity: function mimcMultiHash(uint256[] arr) view returns(uint256)
func (_MiddlewareContract *MiddlewareContractSession) MimcMultiHash(arr []*big.Int) (*big.Int, error) {
	return _MiddlewareContract.Contract.MimcMultiHash(&_MiddlewareContract.CallOpts, arr)
}

// MimcMultiHash is a free data retrieval call binding the contract method 0xbe722daf.
//
// Solidity: function mimcMultiHash(uint256[] arr) view returns(uint256)
func (_MiddlewareContract *MiddlewareContractCallerSession) MimcMultiHash(arr []*big.Int) (*big.Int, error) {
	return _MiddlewareContract.Contract.MimcMultiHash(&_MiddlewareContract.CallOpts, arr)
}

// DepositExistence is a paid mutator transaction binding the contract method 0xed3d67dd.
//
// Solidity: function _depositExistence(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s) returns()
func (_MiddlewareContract *MiddlewareContractTransactor) DepositExistence(opts *bind.TransactOpts, fromX *big.Int, fromY *big.Int, toX *big.Int, toY *big.Int, amount *big.Int, r8x *big.Int, r8y *big.Int, s *big.Int) (*types.Transaction, error) {
	return _MiddlewareContract.contract.Transact(opts, "_depositExistence", fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// DepositExistence is a paid mutator transaction binding the contract method 0xed3d67dd.
//
// Solidity: function _depositExistence(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s) returns()
func (_MiddlewareContract *MiddlewareContractSession) DepositExistence(fromX *big.Int, fromY *big.Int, toX *big.Int, toY *big.Int, amount *big.Int, r8x *big.Int, r8y *big.Int, s *big.Int) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.DepositExistence(&_MiddlewareContract.TransactOpts, fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// DepositExistence is a paid mutator transaction binding the contract method 0xed3d67dd.
//
// Solidity: function _depositExistence(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s) returns()
func (_MiddlewareContract *MiddlewareContractTransactorSession) DepositExistence(fromX *big.Int, fromY *big.Int, toX *big.Int, toY *big.Int, amount *big.Int, r8x *big.Int, r8y *big.Int, s *big.Int) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.DepositExistence(&_MiddlewareContract.TransactOpts, fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// DepositRegister is a paid mutator transaction binding the contract method 0x1c5237d1.
//
// Solidity: function _depositRegister(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s) returns()
func (_MiddlewareContract *MiddlewareContractTransactor) DepositRegister(opts *bind.TransactOpts, fromX *big.Int, fromY *big.Int, toX *big.Int, toY *big.Int, amount *big.Int, r8x *big.Int, r8y *big.Int, s *big.Int) (*types.Transaction, error) {
	return _MiddlewareContract.contract.Transact(opts, "_depositRegister", fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// DepositRegister is a paid mutator transaction binding the contract method 0x1c5237d1.
//
// Solidity: function _depositRegister(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s) returns()
func (_MiddlewareContract *MiddlewareContractSession) DepositRegister(fromX *big.Int, fromY *big.Int, toX *big.Int, toY *big.Int, amount *big.Int, r8x *big.Int, r8y *big.Int, s *big.Int) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.DepositRegister(&_MiddlewareContract.TransactOpts, fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// DepositRegister is a paid mutator transaction binding the contract method 0x1c5237d1.
//
// Solidity: function _depositRegister(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s) returns()
func (_MiddlewareContract *MiddlewareContractTransactorSession) DepositRegister(fromX *big.Int, fromY *big.Int, toX *big.Int, toY *big.Int, amount *big.Int, r8x *big.Int, r8y *big.Int, s *big.Int) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.DepositRegister(&_MiddlewareContract.TransactOpts, fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// Deposit is a paid mutator transaction binding the contract method 0xffe41ea4.
//
// Solidity: function deposit(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s) payable returns()
func (_MiddlewareContract *MiddlewareContractTransactor) Deposit(opts *bind.TransactOpts, fromX *big.Int, fromY *big.Int, toX *big.Int, toY *big.Int, amount *big.Int, r8x *big.Int, r8y *big.Int, s *big.Int) (*types.Transaction, error) {
	return _MiddlewareContract.contract.Transact(opts, "deposit", fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// Deposit is a paid mutator transaction binding the contract method 0xffe41ea4.
//
// Solidity: function deposit(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s) payable returns()
func (_MiddlewareContract *MiddlewareContractSession) Deposit(fromX *big.Int, fromY *big.Int, toX *big.Int, toY *big.Int, amount *big.Int, r8x *big.Int, r8y *big.Int, s *big.Int) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.Deposit(&_MiddlewareContract.TransactOpts, fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// Deposit is a paid mutator transaction binding the contract method 0xffe41ea4.
//
// Solidity: function deposit(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s) payable returns()
func (_MiddlewareContract *MiddlewareContractTransactorSession) Deposit(fromX *big.Int, fromY *big.Int, toX *big.Int, toY *big.Int, amount *big.Int, r8x *big.Int, r8y *big.Int, s *big.Int) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.Deposit(&_MiddlewareContract.TransactOpts, fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// Transfer is a paid mutator transaction binding the contract method 0xfc085627.
//
// Solidity: function transfer(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s) returns()
func (_MiddlewareContract *MiddlewareContractTransactor) Transfer(opts *bind.TransactOpts, fromX *big.Int, fromY *big.Int, toX *big.Int, toY *big.Int, amount *big.Int, r8x *big.Int, r8y *big.Int, s *big.Int) (*types.Transaction, error) {
	return _MiddlewareContract.contract.Transact(opts, "transfer", fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// Transfer is a paid mutator transaction binding the contract method 0xfc085627.
//
// Solidity: function transfer(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s) returns()
func (_MiddlewareContract *MiddlewareContractSession) Transfer(fromX *big.Int, fromY *big.Int, toX *big.Int, toY *big.Int, amount *big.Int, r8x *big.Int, r8y *big.Int, s *big.Int) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.Transfer(&_MiddlewareContract.TransactOpts, fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// Transfer is a paid mutator transaction binding the contract method 0xfc085627.
//
// Solidity: function transfer(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s) returns()
func (_MiddlewareContract *MiddlewareContractTransactorSession) Transfer(fromX *big.Int, fromY *big.Int, toX *big.Int, toY *big.Int, amount *big.Int, r8x *big.Int, r8y *big.Int, s *big.Int) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.Transfer(&_MiddlewareContract.TransactOpts, fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// Withdraw is a paid mutator transaction binding the contract method 0xc6bcf070.
//
// Solidity: function withdraw(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s) returns()
func (_MiddlewareContract *MiddlewareContractTransactor) Withdraw(opts *bind.TransactOpts, fromX *big.Int, fromY *big.Int, toX *big.Int, toY *big.Int, amount *big.Int, r8x *big.Int, r8y *big.Int, s *big.Int) (*types.Transaction, error) {
	return _MiddlewareContract.contract.Transact(opts, "withdraw", fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// Withdraw is a paid mutator transaction binding the contract method 0xc6bcf070.
//
// Solidity: function withdraw(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s) returns()
func (_MiddlewareContract *MiddlewareContractSession) Withdraw(fromX *big.Int, fromY *big.Int, toX *big.Int, toY *big.Int, amount *big.Int, r8x *big.Int, r8y *big.Int, s *big.Int) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.Withdraw(&_MiddlewareContract.TransactOpts, fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// Withdraw is a paid mutator transaction binding the contract method 0xc6bcf070.
//
// Solidity: function withdraw(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s) returns()
func (_MiddlewareContract *MiddlewareContractTransactorSession) Withdraw(fromX *big.Int, fromY *big.Int, toX *big.Int, toY *big.Int, amount *big.Int, r8x *big.Int, r8y *big.Int, s *big.Int) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.Withdraw(&_MiddlewareContract.TransactOpts, fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// MiddlewareContractDDebugIterator is returned from FilterDDebug and is used to iterate over the raw logs and unpacked data for DDebug events raised by the MiddlewareContract contract.
type MiddlewareContractDDebugIterator struct {
	Event *MiddlewareContractDDebug // Event containing the contract specifics and raw log

	contract *bind.BoundContract // Generic contract to use for unpacking event data
	event    string              // Event name to use for unpacking event data

	logs chan types.Log        // Log channel receiving the found contract events
	sub  ethereum.Subscription // Subscription for errors, completion and termination
	done bool                  // Whether the subscription completed delivering logs
	fail error                 // Occurred error to stop iteration
}

// Next advances the iterator to the subsequent event, returning whether there
// are any more events found. In case of a retrieval or parsing error, false is
// returned and Error() can be queried for the exact failure.
func (it *MiddlewareContractDDebugIterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(MiddlewareContractDDebug)
			if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
				it.fail = err
				return false
			}
			it.Event.Raw = log
			return true

		default:
			return false
		}
	}
	// Iterator still in progress, wait for either a data or an error event
	select {
	case log := <-it.logs:
		it.Event = new(MiddlewareContractDDebug)
		if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
			it.fail = err
			return false
		}
		it.Event.Raw = log
		return true

	case err := <-it.sub.Err():
		it.done = true
		it.fail = err
		return it.Next()
	}
}

// Error returns any retrieval or parsing error occurred during filtering.
func (it *MiddlewareContractDDebugIterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *MiddlewareContractDDebugIterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// MiddlewareContractDDebug represents a DDebug event raised by the MiddlewareContract contract.
type MiddlewareContractDDebug struct {
	State bool
	Raw   types.Log // Blockchain specific contextual infos
}

// FilterDDebug is a free log retrieval operation binding the contract event 0xbc8b13c8203b2da79c17c01eb010027414606877eff0e4c6347642d60879d51a.
//
// Solidity: event dDebug(bool state)
func (_MiddlewareContract *MiddlewareContractFilterer) FilterDDebug(opts *bind.FilterOpts) (*MiddlewareContractDDebugIterator, error) {

	logs, sub, err := _MiddlewareContract.contract.FilterLogs(opts, "dDebug")
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractDDebugIterator{contract: _MiddlewareContract.contract, event: "dDebug", logs: logs, sub: sub}, nil
}

// WatchDDebug is a free log subscription operation binding the contract event 0xbc8b13c8203b2da79c17c01eb010027414606877eff0e4c6347642d60879d51a.
//
// Solidity: event dDebug(bool state)
func (_MiddlewareContract *MiddlewareContractFilterer) WatchDDebug(opts *bind.WatchOpts, sink chan<- *MiddlewareContractDDebug) (event.Subscription, error) {

	logs, sub, err := _MiddlewareContract.contract.WatchLogs(opts, "dDebug")
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(MiddlewareContractDDebug)
				if err := _MiddlewareContract.contract.UnpackLog(event, "dDebug", log); err != nil {
					return err
				}
				event.Raw = log

				select {
				case sink <- event:
				case err := <-sub.Err():
					return err
				case <-quit:
					return nil
				}
			case err := <-sub.Err():
				return err
			case <-quit:
				return nil
			}
		}
	}), nil
}

// ParseDDebug is a log parse operation binding the contract event 0xbc8b13c8203b2da79c17c01eb010027414606877eff0e4c6347642d60879d51a.
//
// Solidity: event dDebug(bool state)
func (_MiddlewareContract *MiddlewareContractFilterer) ParseDDebug(log types.Log) (*MiddlewareContractDDebug, error) {
	event := new(MiddlewareContractDDebug)
	if err := _MiddlewareContract.contract.UnpackLog(event, "dDebug", log); err != nil {
		return nil, err
	}
	event.Raw = log
	return event, nil
}

// MiddlewareContractDGetAddressIterator is returned from FilterDGetAddress and is used to iterate over the raw logs and unpacked data for DGetAddress events raised by the MiddlewareContract contract.
type MiddlewareContractDGetAddressIterator struct {
	Event *MiddlewareContractDGetAddress // Event containing the contract specifics and raw log

	contract *bind.BoundContract // Generic contract to use for unpacking event data
	event    string              // Event name to use for unpacking event data

	logs chan types.Log        // Log channel receiving the found contract events
	sub  ethereum.Subscription // Subscription for errors, completion and termination
	done bool                  // Whether the subscription completed delivering logs
	fail error                 // Occurred error to stop iteration
}

// Next advances the iterator to the subsequent event, returning whether there
// are any more events found. In case of a retrieval or parsing error, false is
// returned and Error() can be queried for the exact failure.
func (it *MiddlewareContractDGetAddressIterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(MiddlewareContractDGetAddress)
			if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
				it.fail = err
				return false
			}
			it.Event.Raw = log
			return true

		default:
			return false
		}
	}
	// Iterator still in progress, wait for either a data or an error event
	select {
	case log := <-it.logs:
		it.Event = new(MiddlewareContractDGetAddress)
		if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
			it.fail = err
			return false
		}
		it.Event.Raw = log
		return true

	case err := <-it.sub.Err():
		it.done = true
		it.fail = err
		return it.Next()
	}
}

// Error returns any retrieval or parsing error occurred during filtering.
func (it *MiddlewareContractDGetAddressIterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *MiddlewareContractDGetAddressIterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// MiddlewareContractDGetAddress represents a DGetAddress event raised by the MiddlewareContract contract.
type MiddlewareContractDGetAddress struct {
	Addr common.Address
	Raw  types.Log // Blockchain specific contextual infos
}

// FilterDGetAddress is a free log retrieval operation binding the contract event 0x6193985f3794c846490c5cbf0d9e638dc18edd55333fbf5717bc4147ccf58948.
//
// Solidity: event dGetAddress(address addr)
func (_MiddlewareContract *MiddlewareContractFilterer) FilterDGetAddress(opts *bind.FilterOpts) (*MiddlewareContractDGetAddressIterator, error) {

	logs, sub, err := _MiddlewareContract.contract.FilterLogs(opts, "dGetAddress")
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractDGetAddressIterator{contract: _MiddlewareContract.contract, event: "dGetAddress", logs: logs, sub: sub}, nil
}

// WatchDGetAddress is a free log subscription operation binding the contract event 0x6193985f3794c846490c5cbf0d9e638dc18edd55333fbf5717bc4147ccf58948.
//
// Solidity: event dGetAddress(address addr)
func (_MiddlewareContract *MiddlewareContractFilterer) WatchDGetAddress(opts *bind.WatchOpts, sink chan<- *MiddlewareContractDGetAddress) (event.Subscription, error) {

	logs, sub, err := _MiddlewareContract.contract.WatchLogs(opts, "dGetAddress")
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(MiddlewareContractDGetAddress)
				if err := _MiddlewareContract.contract.UnpackLog(event, "dGetAddress", log); err != nil {
					return err
				}
				event.Raw = log

				select {
				case sink <- event:
				case err := <-sub.Err():
					return err
				case <-quit:
					return nil
				}
			case err := <-sub.Err():
				return err
			case <-quit:
				return nil
			}
		}
	}), nil
}

// ParseDGetAddress is a log parse operation binding the contract event 0x6193985f3794c846490c5cbf0d9e638dc18edd55333fbf5717bc4147ccf58948.
//
// Solidity: event dGetAddress(address addr)
func (_MiddlewareContract *MiddlewareContractFilterer) ParseDGetAddress(log types.Log) (*MiddlewareContractDGetAddress, error) {
	event := new(MiddlewareContractDGetAddress)
	if err := _MiddlewareContract.contract.UnpackLog(event, "dGetAddress", log); err != nil {
		return nil, err
	}
	event.Raw = log
	return event, nil
}

// MiddlewareContractDGetBoolIterator is returned from FilterDGetBool and is used to iterate over the raw logs and unpacked data for DGetBool events raised by the MiddlewareContract contract.
type MiddlewareContractDGetBoolIterator struct {
	Event *MiddlewareContractDGetBool // Event containing the contract specifics and raw log

	contract *bind.BoundContract // Generic contract to use for unpacking event data
	event    string              // Event name to use for unpacking event data

	logs chan types.Log        // Log channel receiving the found contract events
	sub  ethereum.Subscription // Subscription for errors, completion and termination
	done bool                  // Whether the subscription completed delivering logs
	fail error                 // Occurred error to stop iteration
}

// Next advances the iterator to the subsequent event, returning whether there
// are any more events found. In case of a retrieval or parsing error, false is
// returned and Error() can be queried for the exact failure.
func (it *MiddlewareContractDGetBoolIterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(MiddlewareContractDGetBool)
			if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
				it.fail = err
				return false
			}
			it.Event.Raw = log
			return true

		default:
			return false
		}
	}
	// Iterator still in progress, wait for either a data or an error event
	select {
	case log := <-it.logs:
		it.Event = new(MiddlewareContractDGetBool)
		if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
			it.fail = err
			return false
		}
		it.Event.Raw = log
		return true

	case err := <-it.sub.Err():
		it.done = true
		it.fail = err
		return it.Next()
	}
}

// Error returns any retrieval or parsing error occurred during filtering.
func (it *MiddlewareContractDGetBoolIterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *MiddlewareContractDGetBoolIterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// MiddlewareContractDGetBool represents a DGetBool event raised by the MiddlewareContract contract.
type MiddlewareContractDGetBool struct {
	B   bool
	Raw types.Log // Blockchain specific contextual infos
}

// FilterDGetBool is a free log retrieval operation binding the contract event 0x9f81d39d0745630b4ba78d8bcae2ebe0e3cc86937be7368a428f4d3859a99538.
//
// Solidity: event dGetBool(bool b)
func (_MiddlewareContract *MiddlewareContractFilterer) FilterDGetBool(opts *bind.FilterOpts) (*MiddlewareContractDGetBoolIterator, error) {

	logs, sub, err := _MiddlewareContract.contract.FilterLogs(opts, "dGetBool")
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractDGetBoolIterator{contract: _MiddlewareContract.contract, event: "dGetBool", logs: logs, sub: sub}, nil
}

// WatchDGetBool is a free log subscription operation binding the contract event 0x9f81d39d0745630b4ba78d8bcae2ebe0e3cc86937be7368a428f4d3859a99538.
//
// Solidity: event dGetBool(bool b)
func (_MiddlewareContract *MiddlewareContractFilterer) WatchDGetBool(opts *bind.WatchOpts, sink chan<- *MiddlewareContractDGetBool) (event.Subscription, error) {

	logs, sub, err := _MiddlewareContract.contract.WatchLogs(opts, "dGetBool")
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(MiddlewareContractDGetBool)
				if err := _MiddlewareContract.contract.UnpackLog(event, "dGetBool", log); err != nil {
					return err
				}
				event.Raw = log

				select {
				case sink <- event:
				case err := <-sub.Err():
					return err
				case <-quit:
					return nil
				}
			case err := <-sub.Err():
				return err
			case <-quit:
				return nil
			}
		}
	}), nil
}

// ParseDGetBool is a log parse operation binding the contract event 0x9f81d39d0745630b4ba78d8bcae2ebe0e3cc86937be7368a428f4d3859a99538.
//
// Solidity: event dGetBool(bool b)
func (_MiddlewareContract *MiddlewareContractFilterer) ParseDGetBool(log types.Log) (*MiddlewareContractDGetBool, error) {
	event := new(MiddlewareContractDGetBool)
	if err := _MiddlewareContract.contract.UnpackLog(event, "dGetBool", log); err != nil {
		return nil, err
	}
	event.Raw = log
	return event, nil
}

// MiddlewareContractDGetBytes20Iterator is returned from FilterDGetBytes20 and is used to iterate over the raw logs and unpacked data for DGetBytes20 events raised by the MiddlewareContract contract.
type MiddlewareContractDGetBytes20Iterator struct {
	Event *MiddlewareContractDGetBytes20 // Event containing the contract specifics and raw log

	contract *bind.BoundContract // Generic contract to use for unpacking event data
	event    string              // Event name to use for unpacking event data

	logs chan types.Log        // Log channel receiving the found contract events
	sub  ethereum.Subscription // Subscription for errors, completion and termination
	done bool                  // Whether the subscription completed delivering logs
	fail error                 // Occurred error to stop iteration
}

// Next advances the iterator to the subsequent event, returning whether there
// are any more events found. In case of a retrieval or parsing error, false is
// returned and Error() can be queried for the exact failure.
func (it *MiddlewareContractDGetBytes20Iterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(MiddlewareContractDGetBytes20)
			if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
				it.fail = err
				return false
			}
			it.Event.Raw = log
			return true

		default:
			return false
		}
	}
	// Iterator still in progress, wait for either a data or an error event
	select {
	case log := <-it.logs:
		it.Event = new(MiddlewareContractDGetBytes20)
		if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
			it.fail = err
			return false
		}
		it.Event.Raw = log
		return true

	case err := <-it.sub.Err():
		it.done = true
		it.fail = err
		return it.Next()
	}
}

// Error returns any retrieval or parsing error occurred during filtering.
func (it *MiddlewareContractDGetBytes20Iterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *MiddlewareContractDGetBytes20Iterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// MiddlewareContractDGetBytes20 represents a DGetBytes20 event raised by the MiddlewareContract contract.
type MiddlewareContractDGetBytes20 struct {
	Addr [20]byte
	Raw  types.Log // Blockchain specific contextual infos
}

// FilterDGetBytes20 is a free log retrieval operation binding the contract event 0x609150de681a4db3e0d638beea4a8948be58c349fcc0502f23c32e44c956d4bc.
//
// Solidity: event dGetBytes20(bytes20 addr)
func (_MiddlewareContract *MiddlewareContractFilterer) FilterDGetBytes20(opts *bind.FilterOpts) (*MiddlewareContractDGetBytes20Iterator, error) {

	logs, sub, err := _MiddlewareContract.contract.FilterLogs(opts, "dGetBytes20")
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractDGetBytes20Iterator{contract: _MiddlewareContract.contract, event: "dGetBytes20", logs: logs, sub: sub}, nil
}

// WatchDGetBytes20 is a free log subscription operation binding the contract event 0x609150de681a4db3e0d638beea4a8948be58c349fcc0502f23c32e44c956d4bc.
//
// Solidity: event dGetBytes20(bytes20 addr)
func (_MiddlewareContract *MiddlewareContractFilterer) WatchDGetBytes20(opts *bind.WatchOpts, sink chan<- *MiddlewareContractDGetBytes20) (event.Subscription, error) {

	logs, sub, err := _MiddlewareContract.contract.WatchLogs(opts, "dGetBytes20")
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(MiddlewareContractDGetBytes20)
				if err := _MiddlewareContract.contract.UnpackLog(event, "dGetBytes20", log); err != nil {
					return err
				}
				event.Raw = log

				select {
				case sink <- event:
				case err := <-sub.Err():
					return err
				case <-quit:
					return nil
				}
			case err := <-sub.Err():
				return err
			case <-quit:
				return nil
			}
		}
	}), nil
}

// ParseDGetBytes20 is a log parse operation binding the contract event 0x609150de681a4db3e0d638beea4a8948be58c349fcc0502f23c32e44c956d4bc.
//
// Solidity: event dGetBytes20(bytes20 addr)
func (_MiddlewareContract *MiddlewareContractFilterer) ParseDGetBytes20(log types.Log) (*MiddlewareContractDGetBytes20, error) {
	event := new(MiddlewareContractDGetBytes20)
	if err := _MiddlewareContract.contract.UnpackLog(event, "dGetBytes20", log); err != nil {
		return nil, err
	}
	event.Raw = log
	return event, nil
}

// MiddlewareContractDGetStringIterator is returned from FilterDGetString and is used to iterate over the raw logs and unpacked data for DGetString events raised by the MiddlewareContract contract.
type MiddlewareContractDGetStringIterator struct {
	Event *MiddlewareContractDGetString // Event containing the contract specifics and raw log

	contract *bind.BoundContract // Generic contract to use for unpacking event data
	event    string              // Event name to use for unpacking event data

	logs chan types.Log        // Log channel receiving the found contract events
	sub  ethereum.Subscription // Subscription for errors, completion and termination
	done bool                  // Whether the subscription completed delivering logs
	fail error                 // Occurred error to stop iteration
}

// Next advances the iterator to the subsequent event, returning whether there
// are any more events found. In case of a retrieval or parsing error, false is
// returned and Error() can be queried for the exact failure.
func (it *MiddlewareContractDGetStringIterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(MiddlewareContractDGetString)
			if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
				it.fail = err
				return false
			}
			it.Event.Raw = log
			return true

		default:
			return false
		}
	}
	// Iterator still in progress, wait for either a data or an error event
	select {
	case log := <-it.logs:
		it.Event = new(MiddlewareContractDGetString)
		if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
			it.fail = err
			return false
		}
		it.Event.Raw = log
		return true

	case err := <-it.sub.Err():
		it.done = true
		it.fail = err
		return it.Next()
	}
}

// Error returns any retrieval or parsing error occurred during filtering.
func (it *MiddlewareContractDGetStringIterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *MiddlewareContractDGetStringIterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// MiddlewareContractDGetString represents a DGetString event raised by the MiddlewareContract contract.
type MiddlewareContractDGetString struct {
	Str string
	Raw types.Log // Blockchain specific contextual infos
}

// FilterDGetString is a free log retrieval operation binding the contract event 0x766ba33eed9390bf74894ab64d15834eddb4095e00203e303f9377052e41bb69.
//
// Solidity: event dGetString(string str)
func (_MiddlewareContract *MiddlewareContractFilterer) FilterDGetString(opts *bind.FilterOpts) (*MiddlewareContractDGetStringIterator, error) {

	logs, sub, err := _MiddlewareContract.contract.FilterLogs(opts, "dGetString")
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractDGetStringIterator{contract: _MiddlewareContract.contract, event: "dGetString", logs: logs, sub: sub}, nil
}

// WatchDGetString is a free log subscription operation binding the contract event 0x766ba33eed9390bf74894ab64d15834eddb4095e00203e303f9377052e41bb69.
//
// Solidity: event dGetString(string str)
func (_MiddlewareContract *MiddlewareContractFilterer) WatchDGetString(opts *bind.WatchOpts, sink chan<- *MiddlewareContractDGetString) (event.Subscription, error) {

	logs, sub, err := _MiddlewareContract.contract.WatchLogs(opts, "dGetString")
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(MiddlewareContractDGetString)
				if err := _MiddlewareContract.contract.UnpackLog(event, "dGetString", log); err != nil {
					return err
				}
				event.Raw = log

				select {
				case sink <- event:
				case err := <-sub.Err():
					return err
				case <-quit:
					return nil
				}
			case err := <-sub.Err():
				return err
			case <-quit:
				return nil
			}
		}
	}), nil
}

// ParseDGetString is a log parse operation binding the contract event 0x766ba33eed9390bf74894ab64d15834eddb4095e00203e303f9377052e41bb69.
//
// Solidity: event dGetString(string str)
func (_MiddlewareContract *MiddlewareContractFilterer) ParseDGetString(log types.Log) (*MiddlewareContractDGetString, error) {
	event := new(MiddlewareContractDGetString)
	if err := _MiddlewareContract.contract.UnpackLog(event, "dGetString", log); err != nil {
		return nil, err
	}
	event.Raw = log
	return event, nil
}

// MiddlewareContractDGetUintIterator is returned from FilterDGetUint and is used to iterate over the raw logs and unpacked data for DGetUint events raised by the MiddlewareContract contract.
type MiddlewareContractDGetUintIterator struct {
	Event *MiddlewareContractDGetUint // Event containing the contract specifics and raw log

	contract *bind.BoundContract // Generic contract to use for unpacking event data
	event    string              // Event name to use for unpacking event data

	logs chan types.Log        // Log channel receiving the found contract events
	sub  ethereum.Subscription // Subscription for errors, completion and termination
	done bool                  // Whether the subscription completed delivering logs
	fail error                 // Occurred error to stop iteration
}

// Next advances the iterator to the subsequent event, returning whether there
// are any more events found. In case of a retrieval or parsing error, false is
// returned and Error() can be queried for the exact failure.
func (it *MiddlewareContractDGetUintIterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(MiddlewareContractDGetUint)
			if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
				it.fail = err
				return false
			}
			it.Event.Raw = log
			return true

		default:
			return false
		}
	}
	// Iterator still in progress, wait for either a data or an error event
	select {
	case log := <-it.logs:
		it.Event = new(MiddlewareContractDGetUint)
		if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
			it.fail = err
			return false
		}
		it.Event.Raw = log
		return true

	case err := <-it.sub.Err():
		it.done = true
		it.fail = err
		return it.Next()
	}
}

// Error returns any retrieval or parsing error occurred during filtering.
func (it *MiddlewareContractDGetUintIterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *MiddlewareContractDGetUintIterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// MiddlewareContractDGetUint represents a DGetUint event raised by the MiddlewareContract contract.
type MiddlewareContractDGetUint struct {
	U   *big.Int
	Raw types.Log // Blockchain specific contextual infos
}

// FilterDGetUint is a free log retrieval operation binding the contract event 0xa3fc919d4a306961a1ed58dfebf2f4c6fa24b2cf0ce18e828cbbf312d929b9ce.
//
// Solidity: event dGetUint(uint256 u)
func (_MiddlewareContract *MiddlewareContractFilterer) FilterDGetUint(opts *bind.FilterOpts) (*MiddlewareContractDGetUintIterator, error) {

	logs, sub, err := _MiddlewareContract.contract.FilterLogs(opts, "dGetUint")
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractDGetUintIterator{contract: _MiddlewareContract.contract, event: "dGetUint", logs: logs, sub: sub}, nil
}

// WatchDGetUint is a free log subscription operation binding the contract event 0xa3fc919d4a306961a1ed58dfebf2f4c6fa24b2cf0ce18e828cbbf312d929b9ce.
//
// Solidity: event dGetUint(uint256 u)
func (_MiddlewareContract *MiddlewareContractFilterer) WatchDGetUint(opts *bind.WatchOpts, sink chan<- *MiddlewareContractDGetUint) (event.Subscription, error) {

	logs, sub, err := _MiddlewareContract.contract.WatchLogs(opts, "dGetUint")
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(MiddlewareContractDGetUint)
				if err := _MiddlewareContract.contract.UnpackLog(event, "dGetUint", log); err != nil {
					return err
				}
				event.Raw = log

				select {
				case sink <- event:
				case err := <-sub.Err():
					return err
				case <-quit:
					return nil
				}
			case err := <-sub.Err():
				return err
			case <-quit:
				return nil
			}
		}
	}), nil
}

// ParseDGetUint is a log parse operation binding the contract event 0xa3fc919d4a306961a1ed58dfebf2f4c6fa24b2cf0ce18e828cbbf312d929b9ce.
//
// Solidity: event dGetUint(uint256 u)
func (_MiddlewareContract *MiddlewareContractFilterer) ParseDGetUint(log types.Log) (*MiddlewareContractDGetUint, error) {
	event := new(MiddlewareContractDGetUint)
	if err := _MiddlewareContract.contract.UnpackLog(event, "dGetUint", log); err != nil {
		return nil, err
	}
	event.Raw = log
	return event, nil
}

// MiddlewareContractDGetUint256Iterator is returned from FilterDGetUint256 and is used to iterate over the raw logs and unpacked data for DGetUint256 events raised by the MiddlewareContract contract.
type MiddlewareContractDGetUint256Iterator struct {
	Event *MiddlewareContractDGetUint256 // Event containing the contract specifics and raw log

	contract *bind.BoundContract // Generic contract to use for unpacking event data
	event    string              // Event name to use for unpacking event data

	logs chan types.Log        // Log channel receiving the found contract events
	sub  ethereum.Subscription // Subscription for errors, completion and termination
	done bool                  // Whether the subscription completed delivering logs
	fail error                 // Occurred error to stop iteration
}

// Next advances the iterator to the subsequent event, returning whether there
// are any more events found. In case of a retrieval or parsing error, false is
// returned and Error() can be queried for the exact failure.
func (it *MiddlewareContractDGetUint256Iterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(MiddlewareContractDGetUint256)
			if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
				it.fail = err
				return false
			}
			it.Event.Raw = log
			return true

		default:
			return false
		}
	}
	// Iterator still in progress, wait for either a data or an error event
	select {
	case log := <-it.logs:
		it.Event = new(MiddlewareContractDGetUint256)
		if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
			it.fail = err
			return false
		}
		it.Event.Raw = log
		return true

	case err := <-it.sub.Err():
		it.done = true
		it.fail = err
		return it.Next()
	}
}

// Error returns any retrieval or parsing error occurred during filtering.
func (it *MiddlewareContractDGetUint256Iterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *MiddlewareContractDGetUint256Iterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// MiddlewareContractDGetUint256 represents a DGetUint256 event raised by the MiddlewareContract contract.
type MiddlewareContractDGetUint256 struct {
	Value *big.Int
	Raw   types.Log // Blockchain specific contextual infos
}

// FilterDGetUint256 is a free log retrieval operation binding the contract event 0x70b776fcfce5ff976ce008645bb8fe513033ea02980c88278c49616f5ff0cf49.
//
// Solidity: event dGetUint256(uint256 value)
func (_MiddlewareContract *MiddlewareContractFilterer) FilterDGetUint256(opts *bind.FilterOpts) (*MiddlewareContractDGetUint256Iterator, error) {

	logs, sub, err := _MiddlewareContract.contract.FilterLogs(opts, "dGetUint256")
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractDGetUint256Iterator{contract: _MiddlewareContract.contract, event: "dGetUint256", logs: logs, sub: sub}, nil
}

// WatchDGetUint256 is a free log subscription operation binding the contract event 0x70b776fcfce5ff976ce008645bb8fe513033ea02980c88278c49616f5ff0cf49.
//
// Solidity: event dGetUint256(uint256 value)
func (_MiddlewareContract *MiddlewareContractFilterer) WatchDGetUint256(opts *bind.WatchOpts, sink chan<- *MiddlewareContractDGetUint256) (event.Subscription, error) {

	logs, sub, err := _MiddlewareContract.contract.WatchLogs(opts, "dGetUint256")
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(MiddlewareContractDGetUint256)
				if err := _MiddlewareContract.contract.UnpackLog(event, "dGetUint256", log); err != nil {
					return err
				}
				event.Raw = log

				select {
				case sink <- event:
				case err := <-sub.Err():
					return err
				case <-quit:
					return nil
				}
			case err := <-sub.Err():
				return err
			case <-quit:
				return nil
			}
		}
	}), nil
}

// ParseDGetUint256 is a log parse operation binding the contract event 0x70b776fcfce5ff976ce008645bb8fe513033ea02980c88278c49616f5ff0cf49.
//
// Solidity: event dGetUint256(uint256 value)
func (_MiddlewareContract *MiddlewareContractFilterer) ParseDGetUint256(log types.Log) (*MiddlewareContractDGetUint256, error) {
	event := new(MiddlewareContractDGetUint256)
	if err := _MiddlewareContract.contract.UnpackLog(event, "dGetUint256", log); err != nil {
		return nil, err
	}
	event.Raw = log
	return event, nil
}

// MiddlewareContractDGetUint256ArrayIterator is returned from FilterDGetUint256Array and is used to iterate over the raw logs and unpacked data for DGetUint256Array events raised by the MiddlewareContract contract.
type MiddlewareContractDGetUint256ArrayIterator struct {
	Event *MiddlewareContractDGetUint256Array // Event containing the contract specifics and raw log

	contract *bind.BoundContract // Generic contract to use for unpacking event data
	event    string              // Event name to use for unpacking event data

	logs chan types.Log        // Log channel receiving the found contract events
	sub  ethereum.Subscription // Subscription for errors, completion and termination
	done bool                  // Whether the subscription completed delivering logs
	fail error                 // Occurred error to stop iteration
}

// Next advances the iterator to the subsequent event, returning whether there
// are any more events found. In case of a retrieval or parsing error, false is
// returned and Error() can be queried for the exact failure.
func (it *MiddlewareContractDGetUint256ArrayIterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(MiddlewareContractDGetUint256Array)
			if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
				it.fail = err
				return false
			}
			it.Event.Raw = log
			return true

		default:
			return false
		}
	}
	// Iterator still in progress, wait for either a data or an error event
	select {
	case log := <-it.logs:
		it.Event = new(MiddlewareContractDGetUint256Array)
		if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
			it.fail = err
			return false
		}
		it.Event.Raw = log
		return true

	case err := <-it.sub.Err():
		it.done = true
		it.fail = err
		return it.Next()
	}
}

// Error returns any retrieval or parsing error occurred during filtering.
func (it *MiddlewareContractDGetUint256ArrayIterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *MiddlewareContractDGetUint256ArrayIterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// MiddlewareContractDGetUint256Array represents a DGetUint256Array event raised by the MiddlewareContract contract.
type MiddlewareContractDGetUint256Array struct {
	Arr []*big.Int
	Raw types.Log // Blockchain specific contextual infos
}

// FilterDGetUint256Array is a free log retrieval operation binding the contract event 0xd6e694153a0076f11ea97454bcf52d2a7d248ada3ff7ffdc225c020e0bba20f9.
//
// Solidity: event dGetUint256Array(uint256[] arr)
func (_MiddlewareContract *MiddlewareContractFilterer) FilterDGetUint256Array(opts *bind.FilterOpts) (*MiddlewareContractDGetUint256ArrayIterator, error) {

	logs, sub, err := _MiddlewareContract.contract.FilterLogs(opts, "dGetUint256Array")
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractDGetUint256ArrayIterator{contract: _MiddlewareContract.contract, event: "dGetUint256Array", logs: logs, sub: sub}, nil
}

// WatchDGetUint256Array is a free log subscription operation binding the contract event 0xd6e694153a0076f11ea97454bcf52d2a7d248ada3ff7ffdc225c020e0bba20f9.
//
// Solidity: event dGetUint256Array(uint256[] arr)
func (_MiddlewareContract *MiddlewareContractFilterer) WatchDGetUint256Array(opts *bind.WatchOpts, sink chan<- *MiddlewareContractDGetUint256Array) (event.Subscription, error) {

	logs, sub, err := _MiddlewareContract.contract.WatchLogs(opts, "dGetUint256Array")
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(MiddlewareContractDGetUint256Array)
				if err := _MiddlewareContract.contract.UnpackLog(event, "dGetUint256Array", log); err != nil {
					return err
				}
				event.Raw = log

				select {
				case sink <- event:
				case err := <-sub.Err():
					return err
				case <-quit:
					return nil
				}
			case err := <-sub.Err():
				return err
			case <-quit:
				return nil
			}
		}
	}), nil
}

// ParseDGetUint256Array is a log parse operation binding the contract event 0xd6e694153a0076f11ea97454bcf52d2a7d248ada3ff7ffdc225c020e0bba20f9.
//
// Solidity: event dGetUint256Array(uint256[] arr)
func (_MiddlewareContract *MiddlewareContractFilterer) ParseDGetUint256Array(log types.Log) (*MiddlewareContractDGetUint256Array, error) {
	event := new(MiddlewareContractDGetUint256Array)
	if err := _MiddlewareContract.contract.UnpackLog(event, "dGetUint256Array", log); err != nil {
		return nil, err
	}
	event.Raw = log
	return event, nil
}

// MiddlewareContractEDepositExistenceIterator is returned from FilterEDepositExistence and is used to iterate over the raw logs and unpacked data for EDepositExistence events raised by the MiddlewareContract contract.
type MiddlewareContractEDepositExistenceIterator struct {
	Event *MiddlewareContractEDepositExistence // Event containing the contract specifics and raw log

	contract *bind.BoundContract // Generic contract to use for unpacking event data
	event    string              // Event name to use for unpacking event data

	logs chan types.Log        // Log channel receiving the found contract events
	sub  ethereum.Subscription // Subscription for errors, completion and termination
	done bool                  // Whether the subscription completed delivering logs
	fail error                 // Occurred error to stop iteration
}

// Next advances the iterator to the subsequent event, returning whether there
// are any more events found. In case of a retrieval or parsing error, false is
// returned and Error() can be queried for the exact failure.
func (it *MiddlewareContractEDepositExistenceIterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(MiddlewareContractEDepositExistence)
			if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
				it.fail = err
				return false
			}
			it.Event.Raw = log
			return true

		default:
			return false
		}
	}
	// Iterator still in progress, wait for either a data or an error event
	select {
	case log := <-it.logs:
		it.Event = new(MiddlewareContractEDepositExistence)
		if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
			it.fail = err
			return false
		}
		it.Event.Raw = log
		return true

	case err := <-it.sub.Err():
		it.done = true
		it.fail = err
		return it.Next()
	}
}

// Error returns any retrieval or parsing error occurred during filtering.
func (it *MiddlewareContractEDepositExistenceIterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *MiddlewareContractEDepositExistenceIterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// MiddlewareContractEDepositExistence represents a EDepositExistence event raised by the MiddlewareContract contract.
type MiddlewareContractEDepositExistence struct {
	FromX  *big.Int
	FromY  *big.Int
	ToX    *big.Int
	ToY    *big.Int
	Amount *big.Int
	R8x    *big.Int
	R8y    *big.Int
	S      *big.Int
	Raw    types.Log // Blockchain specific contextual infos
}

// FilterEDepositExistence is a free log retrieval operation binding the contract event 0xfae7f5fe9ee7c362b25572c6cbbf33ee1bdb8ea4e4b73ab8666dfa4f2712e645.
//
// Solidity: event eDepositExistence(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s)
func (_MiddlewareContract *MiddlewareContractFilterer) FilterEDepositExistence(opts *bind.FilterOpts) (*MiddlewareContractEDepositExistenceIterator, error) {

	logs, sub, err := _MiddlewareContract.contract.FilterLogs(opts, "eDepositExistence")
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractEDepositExistenceIterator{contract: _MiddlewareContract.contract, event: "eDepositExistence", logs: logs, sub: sub}, nil
}

// WatchEDepositExistence is a free log subscription operation binding the contract event 0xfae7f5fe9ee7c362b25572c6cbbf33ee1bdb8ea4e4b73ab8666dfa4f2712e645.
//
// Solidity: event eDepositExistence(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s)
func (_MiddlewareContract *MiddlewareContractFilterer) WatchEDepositExistence(opts *bind.WatchOpts, sink chan<- *MiddlewareContractEDepositExistence) (event.Subscription, error) {

	logs, sub, err := _MiddlewareContract.contract.WatchLogs(opts, "eDepositExistence")
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(MiddlewareContractEDepositExistence)
				if err := _MiddlewareContract.contract.UnpackLog(event, "eDepositExistence", log); err != nil {
					return err
				}
				event.Raw = log

				select {
				case sink <- event:
				case err := <-sub.Err():
					return err
				case <-quit:
					return nil
				}
			case err := <-sub.Err():
				return err
			case <-quit:
				return nil
			}
		}
	}), nil
}

// ParseEDepositExistence is a log parse operation binding the contract event 0xfae7f5fe9ee7c362b25572c6cbbf33ee1bdb8ea4e4b73ab8666dfa4f2712e645.
//
// Solidity: event eDepositExistence(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s)
func (_MiddlewareContract *MiddlewareContractFilterer) ParseEDepositExistence(log types.Log) (*MiddlewareContractEDepositExistence, error) {
	event := new(MiddlewareContractEDepositExistence)
	if err := _MiddlewareContract.contract.UnpackLog(event, "eDepositExistence", log); err != nil {
		return nil, err
	}
	event.Raw = log
	return event, nil
}

// MiddlewareContractEDepositRegisterIterator is returned from FilterEDepositRegister and is used to iterate over the raw logs and unpacked data for EDepositRegister events raised by the MiddlewareContract contract.
type MiddlewareContractEDepositRegisterIterator struct {
	Event *MiddlewareContractEDepositRegister // Event containing the contract specifics and raw log

	contract *bind.BoundContract // Generic contract to use for unpacking event data
	event    string              // Event name to use for unpacking event data

	logs chan types.Log        // Log channel receiving the found contract events
	sub  ethereum.Subscription // Subscription for errors, completion and termination
	done bool                  // Whether the subscription completed delivering logs
	fail error                 // Occurred error to stop iteration
}

// Next advances the iterator to the subsequent event, returning whether there
// are any more events found. In case of a retrieval or parsing error, false is
// returned and Error() can be queried for the exact failure.
func (it *MiddlewareContractEDepositRegisterIterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(MiddlewareContractEDepositRegister)
			if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
				it.fail = err
				return false
			}
			it.Event.Raw = log
			return true

		default:
			return false
		}
	}
	// Iterator still in progress, wait for either a data or an error event
	select {
	case log := <-it.logs:
		it.Event = new(MiddlewareContractEDepositRegister)
		if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
			it.fail = err
			return false
		}
		it.Event.Raw = log
		return true

	case err := <-it.sub.Err():
		it.done = true
		it.fail = err
		return it.Next()
	}
}

// Error returns any retrieval or parsing error occurred during filtering.
func (it *MiddlewareContractEDepositRegisterIterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *MiddlewareContractEDepositRegisterIterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// MiddlewareContractEDepositRegister represents a EDepositRegister event raised by the MiddlewareContract contract.
type MiddlewareContractEDepositRegister struct {
	FromX  *big.Int
	FromY  *big.Int
	ToX    *big.Int
	ToY    *big.Int
	Amount *big.Int
	R8x    *big.Int
	R8y    *big.Int
	S      *big.Int
	Raw    types.Log // Blockchain specific contextual infos
}

// FilterEDepositRegister is a free log retrieval operation binding the contract event 0x1d0df93e9d41caa013439fb3104924ce014d7f34ce7aa77377f4dcac09c4e7c8.
//
// Solidity: event eDepositRegister(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s)
func (_MiddlewareContract *MiddlewareContractFilterer) FilterEDepositRegister(opts *bind.FilterOpts) (*MiddlewareContractEDepositRegisterIterator, error) {

	logs, sub, err := _MiddlewareContract.contract.FilterLogs(opts, "eDepositRegister")
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractEDepositRegisterIterator{contract: _MiddlewareContract.contract, event: "eDepositRegister", logs: logs, sub: sub}, nil
}

// WatchEDepositRegister is a free log subscription operation binding the contract event 0x1d0df93e9d41caa013439fb3104924ce014d7f34ce7aa77377f4dcac09c4e7c8.
//
// Solidity: event eDepositRegister(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s)
func (_MiddlewareContract *MiddlewareContractFilterer) WatchEDepositRegister(opts *bind.WatchOpts, sink chan<- *MiddlewareContractEDepositRegister) (event.Subscription, error) {

	logs, sub, err := _MiddlewareContract.contract.WatchLogs(opts, "eDepositRegister")
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(MiddlewareContractEDepositRegister)
				if err := _MiddlewareContract.contract.UnpackLog(event, "eDepositRegister", log); err != nil {
					return err
				}
				event.Raw = log

				select {
				case sink <- event:
				case err := <-sub.Err():
					return err
				case <-quit:
					return nil
				}
			case err := <-sub.Err():
				return err
			case <-quit:
				return nil
			}
		}
	}), nil
}

// ParseEDepositRegister is a log parse operation binding the contract event 0x1d0df93e9d41caa013439fb3104924ce014d7f34ce7aa77377f4dcac09c4e7c8.
//
// Solidity: event eDepositRegister(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s)
func (_MiddlewareContract *MiddlewareContractFilterer) ParseEDepositRegister(log types.Log) (*MiddlewareContractEDepositRegister, error) {
	event := new(MiddlewareContractEDepositRegister)
	if err := _MiddlewareContract.contract.UnpackLog(event, "eDepositRegister", log); err != nil {
		return nil, err
	}
	event.Raw = log
	return event, nil
}

// MiddlewareContractETransferIterator is returned from FilterETransfer and is used to iterate over the raw logs and unpacked data for ETransfer events raised by the MiddlewareContract contract.
type MiddlewareContractETransferIterator struct {
	Event *MiddlewareContractETransfer // Event containing the contract specifics and raw log

	contract *bind.BoundContract // Generic contract to use for unpacking event data
	event    string              // Event name to use for unpacking event data

	logs chan types.Log        // Log channel receiving the found contract events
	sub  ethereum.Subscription // Subscription for errors, completion and termination
	done bool                  // Whether the subscription completed delivering logs
	fail error                 // Occurred error to stop iteration
}

// Next advances the iterator to the subsequent event, returning whether there
// are any more events found. In case of a retrieval or parsing error, false is
// returned and Error() can be queried for the exact failure.
func (it *MiddlewareContractETransferIterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(MiddlewareContractETransfer)
			if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
				it.fail = err
				return false
			}
			it.Event.Raw = log
			return true

		default:
			return false
		}
	}
	// Iterator still in progress, wait for either a data or an error event
	select {
	case log := <-it.logs:
		it.Event = new(MiddlewareContractETransfer)
		if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
			it.fail = err
			return false
		}
		it.Event.Raw = log
		return true

	case err := <-it.sub.Err():
		it.done = true
		it.fail = err
		return it.Next()
	}
}

// Error returns any retrieval or parsing error occurred during filtering.
func (it *MiddlewareContractETransferIterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *MiddlewareContractETransferIterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// MiddlewareContractETransfer represents a ETransfer event raised by the MiddlewareContract contract.
type MiddlewareContractETransfer struct {
	FromX  *big.Int
	FromY  *big.Int
	ToX    *big.Int
	ToY    *big.Int
	Amount *big.Int
	R8x    *big.Int
	R8y    *big.Int
	S      *big.Int
	Raw    types.Log // Blockchain specific contextual infos
}

// FilterETransfer is a free log retrieval operation binding the contract event 0xea187e67c172eb2c3d9190685e5921d1e75e9363cb113adb71816c3af1303008.
//
// Solidity: event eTransfer(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s)
func (_MiddlewareContract *MiddlewareContractFilterer) FilterETransfer(opts *bind.FilterOpts) (*MiddlewareContractETransferIterator, error) {

	logs, sub, err := _MiddlewareContract.contract.FilterLogs(opts, "eTransfer")
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractETransferIterator{contract: _MiddlewareContract.contract, event: "eTransfer", logs: logs, sub: sub}, nil
}

// WatchETransfer is a free log subscription operation binding the contract event 0xea187e67c172eb2c3d9190685e5921d1e75e9363cb113adb71816c3af1303008.
//
// Solidity: event eTransfer(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s)
func (_MiddlewareContract *MiddlewareContractFilterer) WatchETransfer(opts *bind.WatchOpts, sink chan<- *MiddlewareContractETransfer) (event.Subscription, error) {

	logs, sub, err := _MiddlewareContract.contract.WatchLogs(opts, "eTransfer")
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(MiddlewareContractETransfer)
				if err := _MiddlewareContract.contract.UnpackLog(event, "eTransfer", log); err != nil {
					return err
				}
				event.Raw = log

				select {
				case sink <- event:
				case err := <-sub.Err():
					return err
				case <-quit:
					return nil
				}
			case err := <-sub.Err():
				return err
			case <-quit:
				return nil
			}
		}
	}), nil
}

// ParseETransfer is a log parse operation binding the contract event 0xea187e67c172eb2c3d9190685e5921d1e75e9363cb113adb71816c3af1303008.
//
// Solidity: event eTransfer(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s)
func (_MiddlewareContract *MiddlewareContractFilterer) ParseETransfer(log types.Log) (*MiddlewareContractETransfer, error) {
	event := new(MiddlewareContractETransfer)
	if err := _MiddlewareContract.contract.UnpackLog(event, "eTransfer", log); err != nil {
		return nil, err
	}
	event.Raw = log
	return event, nil
}

// MiddlewareContractEWithdrawIterator is returned from FilterEWithdraw and is used to iterate over the raw logs and unpacked data for EWithdraw events raised by the MiddlewareContract contract.
type MiddlewareContractEWithdrawIterator struct {
	Event *MiddlewareContractEWithdraw // Event containing the contract specifics and raw log

	contract *bind.BoundContract // Generic contract to use for unpacking event data
	event    string              // Event name to use for unpacking event data

	logs chan types.Log        // Log channel receiving the found contract events
	sub  ethereum.Subscription // Subscription for errors, completion and termination
	done bool                  // Whether the subscription completed delivering logs
	fail error                 // Occurred error to stop iteration
}

// Next advances the iterator to the subsequent event, returning whether there
// are any more events found. In case of a retrieval or parsing error, false is
// returned and Error() can be queried for the exact failure.
func (it *MiddlewareContractEWithdrawIterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(MiddlewareContractEWithdraw)
			if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
				it.fail = err
				return false
			}
			it.Event.Raw = log
			return true

		default:
			return false
		}
	}
	// Iterator still in progress, wait for either a data or an error event
	select {
	case log := <-it.logs:
		it.Event = new(MiddlewareContractEWithdraw)
		if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
			it.fail = err
			return false
		}
		it.Event.Raw = log
		return true

	case err := <-it.sub.Err():
		it.done = true
		it.fail = err
		return it.Next()
	}
}

// Error returns any retrieval or parsing error occurred during filtering.
func (it *MiddlewareContractEWithdrawIterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *MiddlewareContractEWithdrawIterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// MiddlewareContractEWithdraw represents a EWithdraw event raised by the MiddlewareContract contract.
type MiddlewareContractEWithdraw struct {
	FromX  *big.Int
	FromY  *big.Int
	ToX    *big.Int
	ToY    *big.Int
	Amount *big.Int
	R8x    *big.Int
	R8y    *big.Int
	S      *big.Int
	Raw    types.Log // Blockchain specific contextual infos
}

// FilterEWithdraw is a free log retrieval operation binding the contract event 0x69e9ae955363731d6e1cd40b361f1db7d5926cc88c7554b40ed23ffc1e90b333.
//
// Solidity: event eWithdraw(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s)
func (_MiddlewareContract *MiddlewareContractFilterer) FilterEWithdraw(opts *bind.FilterOpts) (*MiddlewareContractEWithdrawIterator, error) {

	logs, sub, err := _MiddlewareContract.contract.FilterLogs(opts, "eWithdraw")
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractEWithdrawIterator{contract: _MiddlewareContract.contract, event: "eWithdraw", logs: logs, sub: sub}, nil
}

// WatchEWithdraw is a free log subscription operation binding the contract event 0x69e9ae955363731d6e1cd40b361f1db7d5926cc88c7554b40ed23ffc1e90b333.
//
// Solidity: event eWithdraw(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s)
func (_MiddlewareContract *MiddlewareContractFilterer) WatchEWithdraw(opts *bind.WatchOpts, sink chan<- *MiddlewareContractEWithdraw) (event.Subscription, error) {

	logs, sub, err := _MiddlewareContract.contract.WatchLogs(opts, "eWithdraw")
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(MiddlewareContractEWithdraw)
				if err := _MiddlewareContract.contract.UnpackLog(event, "eWithdraw", log); err != nil {
					return err
				}
				event.Raw = log

				select {
				case sink <- event:
				case err := <-sub.Err():
					return err
				case <-quit:
					return nil
				}
			case err := <-sub.Err():
				return err
			case <-quit:
				return nil
			}
		}
	}), nil
}

// ParseEWithdraw is a log parse operation binding the contract event 0x69e9ae955363731d6e1cd40b361f1db7d5926cc88c7554b40ed23ffc1e90b333.
//
// Solidity: event eWithdraw(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s)
func (_MiddlewareContract *MiddlewareContractFilterer) ParseEWithdraw(log types.Log) (*MiddlewareContractEWithdraw, error) {
	event := new(MiddlewareContractEWithdraw)
	if err := _MiddlewareContract.contract.UnpackLog(event, "eWithdraw", log); err != nil {
		return nil, err
	}
	event.Raw = log
	return event, nil
}

// MiddlewareContractSDepositRegisterIterator is returned from FilterSDepositRegister and is used to iterate over the raw logs and unpacked data for SDepositRegister events raised by the MiddlewareContract contract.
type MiddlewareContractSDepositRegisterIterator struct {
	Event *MiddlewareContractSDepositRegister // Event containing the contract specifics and raw log

	contract *bind.BoundContract // Generic contract to use for unpacking event data
	event    string              // Event name to use for unpacking event data

	logs chan types.Log        // Log channel receiving the found contract events
	sub  ethereum.Subscription // Subscription for errors, completion and termination
	done bool                  // Whether the subscription completed delivering logs
	fail error                 // Occurred error to stop iteration
}

// Next advances the iterator to the subsequent event, returning whether there
// are any more events found. In case of a retrieval or parsing error, false is
// returned and Error() can be queried for the exact failure.
func (it *MiddlewareContractSDepositRegisterIterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(MiddlewareContractSDepositRegister)
			if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
				it.fail = err
				return false
			}
			it.Event.Raw = log
			return true

		default:
			return false
		}
	}
	// Iterator still in progress, wait for either a data or an error event
	select {
	case log := <-it.logs:
		it.Event = new(MiddlewareContractSDepositRegister)
		if err := it.contract.UnpackLog(it.Event, it.event, log); err != nil {
			it.fail = err
			return false
		}
		it.Event.Raw = log
		return true

	case err := <-it.sub.Err():
		it.done = true
		it.fail = err
		return it.Next()
	}
}

// Error returns any retrieval or parsing error occurred during filtering.
func (it *MiddlewareContractSDepositRegisterIterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *MiddlewareContractSDepositRegisterIterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// MiddlewareContractSDepositRegister represents a SDepositRegister event raised by the MiddlewareContract contract.
type MiddlewareContractSDepositRegister struct {
	B   bool
	Raw types.Log // Blockchain specific contextual infos
}

// FilterSDepositRegister is a free log retrieval operation binding the contract event 0x306c072e846faecd9b6260ac4eb684d0b68ad26bd868bc2ff807e01e0550a5ee.
//
// Solidity: event sDepositRegister(bool b)
func (_MiddlewareContract *MiddlewareContractFilterer) FilterSDepositRegister(opts *bind.FilterOpts) (*MiddlewareContractSDepositRegisterIterator, error) {

	logs, sub, err := _MiddlewareContract.contract.FilterLogs(opts, "sDepositRegister")
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractSDepositRegisterIterator{contract: _MiddlewareContract.contract, event: "sDepositRegister", logs: logs, sub: sub}, nil
}

// WatchSDepositRegister is a free log subscription operation binding the contract event 0x306c072e846faecd9b6260ac4eb684d0b68ad26bd868bc2ff807e01e0550a5ee.
//
// Solidity: event sDepositRegister(bool b)
func (_MiddlewareContract *MiddlewareContractFilterer) WatchSDepositRegister(opts *bind.WatchOpts, sink chan<- *MiddlewareContractSDepositRegister) (event.Subscription, error) {

	logs, sub, err := _MiddlewareContract.contract.WatchLogs(opts, "sDepositRegister")
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(MiddlewareContractSDepositRegister)
				if err := _MiddlewareContract.contract.UnpackLog(event, "sDepositRegister", log); err != nil {
					return err
				}
				event.Raw = log

				select {
				case sink <- event:
				case err := <-sub.Err():
					return err
				case <-quit:
					return nil
				}
			case err := <-sub.Err():
				return err
			case <-quit:
				return nil
			}
		}
	}), nil
}

// ParseSDepositRegister is a log parse operation binding the contract event 0x306c072e846faecd9b6260ac4eb684d0b68ad26bd868bc2ff807e01e0550a5ee.
//
// Solidity: event sDepositRegister(bool b)
func (_MiddlewareContract *MiddlewareContractFilterer) ParseSDepositRegister(log types.Log) (*MiddlewareContractSDepositRegister, error) {
	event := new(MiddlewareContractSDepositRegister)
	if err := _MiddlewareContract.contract.UnpackLog(event, "sDepositRegister", log); err != nil {
		return nil, err
	}
	event.Raw = log
	return event, nil
}
