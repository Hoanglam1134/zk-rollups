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
	ABI: "[{\"inputs\":[{\"internalType\":\"address\",\"name\":\"_mimcContractAddress\",\"type\":\"address\"},{\"internalType\":\"bytes32\",\"name\":\"initializationAccountRoot\",\"type\":\"bytes32\"}],\"stateMutability\":\"nonpayable\",\"type\":\"constructor\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"bool\",\"name\":\"state\",\"type\":\"bool\"}],\"name\":\"dDebug\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"address\",\"name\":\"addr\",\"type\":\"address\"}],\"name\":\"dGetAddress\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"bool\",\"name\":\"b\",\"type\":\"bool\"}],\"name\":\"dGetBool\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"bytes20\",\"name\":\"addr\",\"type\":\"bytes20\"}],\"name\":\"dGetBytes20\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"bytes32\",\"name\":\"value\",\"type\":\"bytes32\"}],\"name\":\"dGetBytes32\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"bytes32[]\",\"name\":\"arr\",\"type\":\"bytes32[]\"}],\"name\":\"dGetBytes32Array\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"string\",\"name\":\"str\",\"type\":\"string\"}],\"name\":\"dGetString\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"u\",\"type\":\"uint256\"}],\"name\":\"dGetUint\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"bytes32\",\"name\":\"fromX\",\"type\":\"bytes32\"},{\"indexed\":false,\"internalType\":\"bytes32\",\"name\":\"fromY\",\"type\":\"bytes32\"},{\"indexed\":false,\"internalType\":\"bytes32\",\"name\":\"toX\",\"type\":\"bytes32\"},{\"indexed\":false,\"internalType\":\"bytes32\",\"name\":\"toY\",\"type\":\"bytes32\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"bytes32\",\"name\":\"r8x\",\"type\":\"bytes32\"},{\"indexed\":false,\"internalType\":\"bytes32\",\"name\":\"r8y\",\"type\":\"bytes32\"},{\"indexed\":false,\"internalType\":\"bytes32\",\"name\":\"s\",\"type\":\"bytes32\"}],\"name\":\"eDepositExistence\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"bytes32\",\"name\":\"fromX\",\"type\":\"bytes32\"},{\"indexed\":false,\"internalType\":\"bytes32\",\"name\":\"fromY\",\"type\":\"bytes32\"},{\"indexed\":false,\"internalType\":\"bytes32\",\"name\":\"toX\",\"type\":\"bytes32\"},{\"indexed\":false,\"internalType\":\"bytes32\",\"name\":\"toY\",\"type\":\"bytes32\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"bytes32\",\"name\":\"r8x\",\"type\":\"bytes32\"},{\"indexed\":false,\"internalType\":\"bytes32\",\"name\":\"r8y\",\"type\":\"bytes32\"},{\"indexed\":false,\"internalType\":\"bytes32\",\"name\":\"s\",\"type\":\"bytes32\"}],\"name\":\"eDepositRegister\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"bool\",\"name\":\"b\",\"type\":\"bool\"}],\"name\":\"sDepositRegister\",\"type\":\"event\"},{\"inputs\":[{\"internalType\":\"bytes32\",\"name\":\"fromX\",\"type\":\"bytes32\"},{\"internalType\":\"bytes32\",\"name\":\"fromY\",\"type\":\"bytes32\"},{\"internalType\":\"bytes32\",\"name\":\"toX\",\"type\":\"bytes32\"},{\"internalType\":\"bytes32\",\"name\":\"toY\",\"type\":\"bytes32\"},{\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"internalType\":\"bytes32\",\"name\":\"r8x\",\"type\":\"bytes32\"},{\"internalType\":\"bytes32\",\"name\":\"r8y\",\"type\":\"bytes32\"},{\"internalType\":\"bytes32\",\"name\":\"s\",\"type\":\"bytes32\"}],\"name\":\"_depositExistence\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"bytes32\",\"name\":\"fromX\",\"type\":\"bytes32\"},{\"internalType\":\"bytes32\",\"name\":\"fromY\",\"type\":\"bytes32\"},{\"internalType\":\"bytes32\",\"name\":\"toX\",\"type\":\"bytes32\"},{\"internalType\":\"bytes32\",\"name\":\"toY\",\"type\":\"bytes32\"},{\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"internalType\":\"bytes32\",\"name\":\"r8x\",\"type\":\"bytes32\"},{\"internalType\":\"bytes32\",\"name\":\"r8y\",\"type\":\"bytes32\"},{\"internalType\":\"bytes32\",\"name\":\"s\",\"type\":\"bytes32\"}],\"name\":\"_depositRegister\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"bytes32\",\"name\":\"fromX\",\"type\":\"bytes32\"},{\"internalType\":\"bytes32\",\"name\":\"fromY\",\"type\":\"bytes32\"},{\"internalType\":\"bytes32\",\"name\":\"toX\",\"type\":\"bytes32\"},{\"internalType\":\"bytes32\",\"name\":\"toY\",\"type\":\"bytes32\"},{\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"internalType\":\"bytes32\",\"name\":\"r8x\",\"type\":\"bytes32\"},{\"internalType\":\"bytes32\",\"name\":\"r8y\",\"type\":\"bytes32\"},{\"internalType\":\"bytes32\",\"name\":\"s\",\"type\":\"bytes32\"}],\"name\":\"deposit\",\"outputs\":[],\"stateMutability\":\"payable\",\"type\":\"function\"},{\"inputs\":[],\"name\":\"getDepositRegisterRoot\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[],\"name\":\"mimc\",\"outputs\":[{\"internalType\":\"contractIMiMC\",\"name\":\"\",\"type\":\"address\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256[]\",\"name\":\"arr\",\"type\":\"uint256[]\"}],\"name\":\"mimcMultiHash\",\"outputs\":[{\"internalType\":\"uint256\",\"name\":\"\",\"type\":\"uint256\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256[2]\",\"name\":\"_pA\",\"type\":\"uint256[2]\"},{\"internalType\":\"uint256[2][2]\",\"name\":\"_pB\",\"type\":\"uint256[2][2]\"},{\"internalType\":\"uint256[2]\",\"name\":\"_pC\",\"type\":\"uint256[2]\"},{\"internalType\":\"uint256[4]\",\"name\":\"_pubSignals\",\"type\":\"uint256[4]\"}],\"name\":\"verifyProof\",\"outputs\":[{\"internalType\":\"bool\",\"name\":\"\",\"type\":\"bool\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256[2]\",\"name\":\"_pA\",\"type\":\"uint256[2]\"},{\"internalType\":\"uint256[2][2]\",\"name\":\"_pB\",\"type\":\"uint256[2][2]\"},{\"internalType\":\"uint256[2]\",\"name\":\"_pC\",\"type\":\"uint256[2]\"},{\"internalType\":\"uint256[4]\",\"name\":\"_pubSignals\",\"type\":\"uint256[4]\"}],\"name\":\"verifyProof_DepositRegister\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"}]",
	Bin: "0x60806040527f30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000015f556040518061014001604052807fd16b23145b3ff136a467325badad0cc2c5d8ea604ed0dc9b77dae7a328d5f11981526020017f12a04951f1c189982c5f02331adbcd700c682a946a143d2bf4d88bb74261151681526020017f61b703991a5b7545f478fc1925412aaea4f03b059abb167f522124bbcaa69d0081526020017f233854b5fe8f01f97ad392c3c1b52a1cc34239fade343b9b04e6c09d2617b10581526020017f3611a2a4c38f96ea24b255159d6589655deb10f9a34f63dbac36e7037b875d0b81526020017f22bc177f448a1d361e2ecb94850cc8f1f16e14f4873784e06b0ff3ddb997002681526020017f65d611ca0d8d4f8b342c47c2e210b64df0916487cb7d886086b3fc150cc7040c81526020017ff41758044e3119f692dfd8cd2d38f69e46dc1e332f8f85bb78fa2084685fb11b81526020017f686244dade625871f3dcdaf448fe6b1833653b79bf1de9d3a7b93111ae3fc90481526020017fca83e72ddcd15a0ece2dc9c3ae354ef75b13999e405e1b243d5f502c0afe4f16815250600190600a620001bf929190620002ae565b50348015620001cc575f80fd5b50604051620023fd380380620023fd8339818101604052810190620001f29190620003ad565b81600e5f6101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff1602179055505f6012819055505f60138190555033600d5f6101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550600c81908060018154018082558091505060019003905f5260205f20015f90919091909150555050620003f2565b82600a8101928215620002e0579160200282015b82811115620002df578251825591602001919060010190620002c2565b5b509050620002ef9190620002f3565b5090565b5b808211156200030c575f815f905550600101620002f4565b5090565b5f80fd5b5f73ffffffffffffffffffffffffffffffffffffffff82169050919050565b5f6200033f8262000314565b9050919050565b620003518162000333565b81146200035c575f80fd5b50565b5f815190506200036f8162000346565b92915050565b5f819050919050565b620003898162000375565b811462000394575f80fd5b50565b5f81519050620003a7816200037e565b92915050565b5f8060408385031215620003c657620003c562000310565b5b5f620003d5858286016200035f565b9250506020620003e88582860162000397565b9150509250929050565b611ffd80620004005f395ff3fe60806040526004361061007a575f3560e01c8063be722daf1161004d578063be722daf14610122578063ce04cbb31461015e578063d5d316761461017a578063ea5ef999146101a25761007a565b80635998ee741461007e5780635caba884146100945780635fe8c13b146100bc57806376385cc3146100f8575b5f80fd5b348015610089575f80fd5b506100926101ca565b005b34801561009f575f80fd5b506100ba60048036038101906100b59190611582565b61021f565b005b3480156100c7575f80fd5b506100e260048036038101906100dd919061169a565b6106a8565b6040516100ef919061171a565b60405180910390f35b348015610103575f80fd5b5061010c610c17565b60405161011991906117ad565b60405180910390f35b34801561012d575f80fd5b5061014860048036038101906101439190611912565b610c3c565b6040516101559190611968565b60405180910390f35b61017860048036038101906101739190611582565b610d7a565b005b348015610185575f80fd5b506101a0600480360381019061019b919061169a565b610e82565b005b3480156101ad575f80fd5b506101c860048036038101906101c39190611582565b611231565b005b7f6d6933b127aa9e6b219cadc33b8f72b9d6528ae4397fc9da80cbd210eb970d49600f5f815481106101ff576101fe611981565b5b905f5260205f20015460405161021591906119bd565b60405180910390a1565b600160125f8282546102319190611a03565b925050819055505f600467ffffffffffffffff811115610254576102536117da565b5b6040519080825280602002602001820160405280156102825781602001602082028036833780820191505090505b509050865f1c815f8151811061029b5761029a611981565b5b602002602001018181525050855f1c816001815181106102be576102bd611981565b5b60200260200101818152505084816002815181106102df576102de611981565b5b6020026020010181815250505f81600381518110610300576102ff611981565b5b6020026020010181815250505f61031682610c3c565b90505f600667ffffffffffffffff811115610334576103336117da565b5b6040519080825280602002602001820160405280156103625781602001602082028036833780820191505090505b5090508a5f1c815f8151811061037b5761037a611981565b5b602002602001018181525050895f1c8160018151811061039e5761039d611981565b5b602002602001018181525050885f1c816002815181106103c1576103c0611981565b5b602002602001018181525050875f1c816003815181106103e4576103e3611981565b5b6020026020010181815250505f8160048151811061040557610404611981565b5b602002602001018181525050868160058151811061042657610425611981565b5b6020026020010181815250505f61043c82610c3c565b90507ff913a91cb7941f332eb9fb4a863f361fc6430a84a2523d30a925e0f0d834d31d8c8c8c8c8c8c8c8c60405161047b989796959493929190611a36565b60405180910390a15f8390505f8290505f60125490505b5f6002826104a09190611adf565b03610647576002816104b29190611b0f565b90505f600267ffffffffffffffff8111156104d0576104cf6117da565b5b6040519080825280602002602001820160405280156104fe5781602001602082028036833780820191505090505b509050600f6001600f805490506105159190611b3f565b8154811061052657610525611981565b5b905f5260205f2001545f1c815f8151811061054457610543611981565b5b602002602001018181525050838160018151811061056557610564611981565b5b602002602001018181525050600f80548061058357610582611b72565b5b600190038181905f5260205f20015f9055905561059f81610c3c565b9350601060016010805490506105b59190611b3f565b815481106105c6576105c5611981565b5b905f5260205f2001545f1c815f815181106105e4576105e3611981565b5b602002602001018181525050828160018151811061060557610604611981565b5b602002602001018181525050601080548061062357610622611b72565b5b600190038181905f5260205f20015f9055905561063f81610c3c565b925050610492565b600f835f1b908060018154018082558091505060019003905f5260205f20015f90919091909150556010825f1b908060018154018082558091505060019003905f5260205f20015f9091909190915055505050505050505050505050505050565b5f610bb7565b7f30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd4781106106dd575f805260205ff35b50565b5f60405183815284602082015285604082015260408160608360076107d05a03fa915081610710575f805260205ff35b825160408201526020830151606082015260408360808360066107d05a03fa91508161073e575f805260205ff35b505050505050565b5f608086015f87017f2d7aef4dacbf074b67b0435003beab901c46d7148623c9743d96f771905676d181527e38ce559c0e261a91fa95a5b9529b346f5a9c58f5a68f5fd288b45576223dff60208201526107e55f8801357f06eda17b868255463022b53906d5ab86ffd45bc4863e06c2749f1215f6feab527f06b70ceb3d4920d983c59e4ed60465546e203ec9ef2fd0908d28837a33f94a7a846106e0565b61083560208801357f16bea1b4cb21a097bcc8d2bc72dfc5bb883b45e9ed04579c6264df705203a9b57f04d8e0d74a9b1442b8ad8f429fd4ca36f160d4fb8c2ebc59bacc09ee66b09e37846106e0565b61088560408801357f0204f4ace627c47608466c9c583f56f9a5584b1228e933a3e905bad0801c94957f1d0d008e53a0927c1cf3d548f9e3dcb63901389de34b0c00528bd4ca1b74bc10846106e0565b6108d560608801357f212d13a2a62a7388c373fe480f95fd982a8900931adeb713f5cd463f6d0ddc917f20ef3224f03062c7a1068be0c12e523457bc1be72ea2775e0532c0d640417f20846106e0565b833582527f30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd4760208501357f30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd4703066020830152843560408301526020850135606083015260408501356080830152606085013560a08301527f05ba24cecf2444285b0dff3e66bf64cae51ad7cc7e88cac30eb7d0684d4d4f8860c08301527f0ff2df766d5153e77d185c2733928d16e23944c9b2dfaf312ee95c06babc76e060e08301527f0c0a54352f1468dbb9dedc826075265ff2e3e00805965d8b7daf0a794757b7036101008301527f2ac605bb9c1eb01a8b6b34e5f77b8e126869d5313e7a8c64f7a74231dfe00c8f6101208301527f2f68e3b4505a2774d4661a51c4a180d8c5fd226d98ae824692ee64d3104188076101408301527f1d253c753f5ef0678a6c8664868f8ab0e98340bd8f5292d88570036ec197b7026101608301525f88015161018083015260205f018801516101a08301527f198e9393920d483a7260bfb731fb5d25f1aa493335a9e71297e485b7aef312c26101c08301527f1800deef121f1e76426a00665e5c4479674322d4f75edadd46debd5cd992f6ed6101e08301527f090689d0585ff075ec9e99ad690c3395bc4b313370b38ef355acdadcd122975b6102008301527f12c85ea5db8c6deb4aab71808dcb408fe3d1e7690c43d37b4ce6cc0166fa7daa610220830152853561024083015260208601356102608301527f056dd6dff00cc7e0eef27b7d4295df9ca4d8d59a623690f150ba41ed9fc629a26102808301527f2dceedf7b148f2b00bab09301b399f6036ff77990cee962a413268d6487f708f6102a08301527f197a282db166d94c67c81ba6cadb8c416c2816a7638d8035ecbc3ff5030b9c026102c08301527f0da6c6b2c981f5493e96373af515ae54411aa9047a25964de97f322e58d0eccc6102e08301526020826103008460086107d05a03fa82518116935050505095945050505050565b6040516103808101604052610bce5f8401356106ae565b610bdb60208401356106ae565b610be860408401356106ae565b610bf560608401356106ae565b610c0260808401356106ae565b610c0f818486888a610746565b805f5260205ff35b600e5f9054906101000a900473ffffffffffffffffffffffffffffffffffffffff1681565b5f805f90505f5b8351811015610d70575f545f54858381518110610c6357610c62611981565b5b6020026020010151610c759190611adf565b5f54600e5f9054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663d15ca1095f54898781518110610cc957610cc8611981565b5b6020026020010151610cdb9190611adf565b876040518363ffffffff1660e01b8152600401610cf9929190611b9f565b602060405180830381865afa158015610d14573d5f803e3d5ffd5b505050506040513d601f19601f82011682018060405250810190610d389190611bda565b85610d439190611a03565b610d4d9190611adf565b610d579190611a03565b610d619190611adf565b91508080600101915050610c43565b5080915050919050565b5f60608787604051602001610d90929190611c25565b60405160208183030381529060405280519060200120901b60601c9050600b5f8273ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f9054906101000a900460ff1615610e1157610e0c8989898989898989611231565b610e77565b6001600b5f8373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff021916908315150217905550610e76898989898989898961021f565b5b505050505050505050565b805f60048110610e9557610e94611981565b5b60200201355f1b60105f81548110610eb057610eaf611981565b5b905f5260205f20015414610ef9576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610ef090611cd0565b60405180910390fd5b80600160048110610f0d57610f0c611981565b5b60200201355f1b600f5f81548110610f2857610f27611981565b5b905f5260205f20015414610f71576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610f6890611d38565b60405180910390fd5b80600260048110610f8557610f84611981565b5b60200201355f1b600c6001600c80549050610fa09190611b3f565b81548110610fb157610fb0611981565b5b905f5260205f20015414610ffa576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610ff190611da0565b60405180910390fd5b3073ffffffffffffffffffffffffffffffffffffffff16635fe8c13b858585856040518563ffffffff1660e01b81526004016110399493929190611e9f565b602060405180830381865afa158015611054573d5f803e3d5ffd5b505050506040513d601f19601f820116820180604052508101906110789190611f0e565b611080575f80fd5b600c8160036004811061109657611095611981565b5b60200201355f1b908060018154018082558091505060019003905f5260205f20015f90919091909150555f5b60016010805490506110d49190611b3f565b8160ff16101561118f5760106001826110ed9190611f45565b60ff168154811061110157611100611981565b5b905f5260205f20015460108260ff168154811061112157611120611981565b5b905f5260205f200181905550600f60018261113c9190611f45565b60ff16815481106111505761114f611981565b5b905f5260205f200154600f8260ff16815481106111705761116f611981565b5b905f5260205f200181905550808061118790611f79565b9150506110c2565b5060108054806111a2576111a1611b72565b5b600190038181905f5260205f20015f90559055600f8054806111c7576111c6611b72565b5b600190038181905f5260205f20015f90559055600460125f8282546111ec9190611b3f565b925050819055507f306c072e846faecd9b6260ac4eb684d0b68ad26bd868bc2ff807e01e0550a5ee6001604051611223919061171a565b60405180910390a150505050565b600160135f8282546112439190611a03565b925050819055505f600667ffffffffffffffff811115611266576112656117da565b5b6040519080825280602002602001820160405280156112945781602001602082028036833780820191505090505b509050885f1c815f815181106112ad576112ac611981565b5b602002602001018181525050875f1c816001815181106112d0576112cf611981565b5b602002602001018181525050865f1c816002815181106112f3576112f2611981565b5b602002602001018181525050855f1c8160038151811061131657611315611981565b5b6020026020010181815250505f8160048151811061133757611336611981565b5b602002602001018181525050848160058151811061135857611357611981565b5b6020026020010181815250505f61136e82610c3c565b90507f045362c160fc977f2e7bf470adfeb18f9cbd59563fa6d529708234815f4f20f88a8a8a8a8a8a8a8a6040516113ad989796959493929190611a36565b60405180910390a15f8190505f60135490505b5f6002826113ce9190611adf565b036114d5576002816113e09190611b0f565b90505f600267ffffffffffffffff8111156113fe576113fd6117da565b5b60405190808252806020026020018201604052801561142c5781602001602082028036833780820191505090505b509050601160016011805490506114439190611b3f565b8154811061145457611453611981565b5b905f5260205f2001545f1c815f8151811061147257611471611981565b5b602002602001018181525050828160018151811061149357611492611981565b5b60200260200101818152505060118054806114b1576114b0611b72565b5b600190038181905f5260205f20015f905590556114cd81610c3c565b9250506113c0565b6011825f1b908060018154018082558091505060019003905f5260205f20015f9091909190915055505050505050505050505050565b5f604051905090565b5f80fd5b5f80fd5b5f819050919050565b61152e8161151c565b8114611538575f80fd5b50565b5f8135905061154981611525565b92915050565b5f819050919050565b6115618161154f565b811461156b575f80fd5b50565b5f8135905061157c81611558565b92915050565b5f805f805f805f80610100898b03121561159f5761159e611514565b5b5f6115ac8b828c0161153b565b98505060206115bd8b828c0161153b565b97505060406115ce8b828c0161153b565b96505060606115df8b828c0161153b565b95505060806115f08b828c0161156e565b94505060a06116018b828c0161153b565b93505060c06116128b828c0161153b565b92505060e06116238b828c0161153b565b9150509295985092959890939650565b5f80fd5b5f8190508260206002028201111561165257611651611633565b5b92915050565b5f8190508260406002028201111561167357611672611633565b5b92915050565b5f8190508260206004028201111561169457611693611633565b5b92915050565b5f805f8061018085870312156116b3576116b2611514565b5b5f6116c087828801611637565b94505060406116d187828801611658565b93505060c06116e287828801611637565b9250506101006116f487828801611679565b91505092959194509250565b5f8115159050919050565b61171481611700565b82525050565b5f60208201905061172d5f83018461170b565b92915050565b5f73ffffffffffffffffffffffffffffffffffffffff82169050919050565b5f819050919050565b5f61177561177061176b84611733565b611752565b611733565b9050919050565b5f6117868261175b565b9050919050565b5f6117978261177c565b9050919050565b6117a78161178d565b82525050565b5f6020820190506117c05f83018461179e565b92915050565b5f80fd5b5f601f19601f8301169050919050565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52604160045260245ffd5b611810826117ca565b810181811067ffffffffffffffff8211171561182f5761182e6117da565b5b80604052505050565b5f61184161150b565b905061184d8282611807565b919050565b5f67ffffffffffffffff82111561186c5761186b6117da565b5b602082029050602081019050919050565b5f61188f61188a84611852565b611838565b905080838252602082019050602084028301858111156118b2576118b1611633565b5b835b818110156118db57806118c7888261156e565b8452602084019350506020810190506118b4565b5050509392505050565b5f82601f8301126118f9576118f86117c6565b5b813561190984826020860161187d565b91505092915050565b5f6020828403121561192757611926611514565b5b5f82013567ffffffffffffffff81111561194457611943611518565b5b611950848285016118e5565b91505092915050565b6119628161154f565b82525050565b5f60208201905061197b5f830184611959565b92915050565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52603260045260245ffd5b6119b78161151c565b82525050565b5f6020820190506119d05f8301846119ae565b92915050565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52601160045260245ffd5b5f611a0d8261154f565b9150611a188361154f565b9250828201905080821115611a3057611a2f6119d6565b5b92915050565b5f61010082019050611a4a5f83018b6119ae565b611a57602083018a6119ae565b611a6460408301896119ae565b611a7160608301886119ae565b611a7e6080830187611959565b611a8b60a08301866119ae565b611a9860c08301856119ae565b611aa560e08301846119ae565b9998505050505050505050565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52601260045260245ffd5b5f611ae98261154f565b9150611af48361154f565b925082611b0457611b03611ab2565b5b828206905092915050565b5f611b198261154f565b9150611b248361154f565b925082611b3457611b33611ab2565b5b828204905092915050565b5f611b498261154f565b9150611b548361154f565b9250828203905081811115611b6c57611b6b6119d6565b5b92915050565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52603160045260245ffd5b5f604082019050611bb25f830185611959565b611bbf6020830184611959565b9392505050565b5f81519050611bd481611558565b92915050565b5f60208284031215611bef57611bee611514565b5b5f611bfc84828501611bc6565b91505092915050565b5f819050919050565b611c1f611c1a8261151c565b611c05565b82525050565b5f611c308285611c0e565b602082019150611c408284611c0e565b6020820191508190509392505050565b5f82825260208201905092915050565b7f4465706f736974205472616e73616374696f6e732061726520696e76616c69645f8201527f2100000000000000000000000000000000000000000000000000000000000000602082015250565b5f611cba602183611c50565b9150611cc582611c60565b604082019050919050565b5f6020820190508181035f830152611ce781611cae565b9050919050565b7f4e6577204163636f756e74732061726520696e76616c696400000000000000005f82015250565b5f611d22601883611c50565b9150611d2d82611cee565b602082019050919050565b5f6020820190508181035f830152611d4f81611d16565b9050919050565b7f5468652073746174657320646f206e6f74206d617463680000000000000000005f82015250565b5f611d8a601783611c50565b9150611d9582611d56565b602082019050919050565b5f6020820190508181035f830152611db781611d7e565b9050919050565b82818337505050565b611dd360408383611dbe565b5050565b5f60029050919050565b5f81905092915050565b5f819050919050565b611e0060408383611dbe565b5050565b5f611e0f8383611df4565b60408301905092915050565b5f82905092915050565b5f604082019050919050565b611e3a81611dd7565b611e448184611de1565b9250611e4f82611deb565b805f5b83811015611e8757611e648284611e1b565b611e6e8782611e04565b9650611e7983611e25565b925050600181019050611e52565b505050505050565b611e9b60808383611dbe565b5050565b5f61018082019050611eb35f830187611dc7565b611ec06040830186611e31565b611ecd60c0830185611dc7565b611edb610100830184611e8f565b95945050505050565b611eed81611700565b8114611ef7575f80fd5b50565b5f81519050611f0881611ee4565b92915050565b5f60208284031215611f2357611f22611514565b5b5f611f3084828501611efa565b91505092915050565b5f60ff82169050919050565b5f611f4f82611f39565b9150611f5a83611f39565b9250828201905060ff811115611f7357611f726119d6565b5b92915050565b5f611f8382611f39565b915060ff8203611f9657611f956119d6565b5b60018201905091905056fea26469706673582212207828a0081de75c9e682e8d4adc80978da0352eb303765f0aeae34108f4235c7f64736f6c637828302e382e32342d646576656c6f702e323032332e31322e322b636f6d6d69742e63336166303263320059",
}

// MiddlewareContractABI is the input ABI used to generate the binding from.
// Deprecated: Use MiddlewareContractMetaData.ABI instead.
var MiddlewareContractABI = MiddlewareContractMetaData.ABI

// MiddlewareContractBin is the compiled bytecode used for deploying new contracts.
// Deprecated: Use MiddlewareContractMetaData.Bin instead.
var MiddlewareContractBin = MiddlewareContractMetaData.Bin

// DeployMiddlewareContract deploys a new Ethereum contract, binding an instance of MiddlewareContract to it.
func DeployMiddlewareContract(auth *bind.TransactOpts, backend bind.ContractBackend, _mimcContractAddress common.Address, initializationAccountRoot [32]byte) (common.Address, *types.Transaction, *MiddlewareContract, error) {
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

// VerifyProof is a free data retrieval call binding the contract method 0x5fe8c13b.
//
// Solidity: function verifyProof(uint256[2] _pA, uint256[2][2] _pB, uint256[2] _pC, uint256[4] _pubSignals) view returns(bool)
func (_MiddlewareContract *MiddlewareContractCaller) VerifyProof(opts *bind.CallOpts, _pA [2]*big.Int, _pB [2][2]*big.Int, _pC [2]*big.Int, _pubSignals [4]*big.Int) (bool, error) {
	var out []interface{}
	err := _MiddlewareContract.contract.Call(opts, &out, "verifyProof", _pA, _pB, _pC, _pubSignals)

	if err != nil {
		return *new(bool), err
	}

	out0 := *abi.ConvertType(out[0], new(bool)).(*bool)

	return out0, err

}

// VerifyProof is a free data retrieval call binding the contract method 0x5fe8c13b.
//
// Solidity: function verifyProof(uint256[2] _pA, uint256[2][2] _pB, uint256[2] _pC, uint256[4] _pubSignals) view returns(bool)
func (_MiddlewareContract *MiddlewareContractSession) VerifyProof(_pA [2]*big.Int, _pB [2][2]*big.Int, _pC [2]*big.Int, _pubSignals [4]*big.Int) (bool, error) {
	return _MiddlewareContract.Contract.VerifyProof(&_MiddlewareContract.CallOpts, _pA, _pB, _pC, _pubSignals)
}

// VerifyProof is a free data retrieval call binding the contract method 0x5fe8c13b.
//
// Solidity: function verifyProof(uint256[2] _pA, uint256[2][2] _pB, uint256[2] _pC, uint256[4] _pubSignals) view returns(bool)
func (_MiddlewareContract *MiddlewareContractCallerSession) VerifyProof(_pA [2]*big.Int, _pB [2][2]*big.Int, _pC [2]*big.Int, _pubSignals [4]*big.Int) (bool, error) {
	return _MiddlewareContract.Contract.VerifyProof(&_MiddlewareContract.CallOpts, _pA, _pB, _pC, _pubSignals)
}

// DepositExistence is a paid mutator transaction binding the contract method 0xea5ef999.
//
// Solidity: function _depositExistence(bytes32 fromX, bytes32 fromY, bytes32 toX, bytes32 toY, uint256 amount, bytes32 r8x, bytes32 r8y, bytes32 s) returns()
func (_MiddlewareContract *MiddlewareContractTransactor) DepositExistence(opts *bind.TransactOpts, fromX [32]byte, fromY [32]byte, toX [32]byte, toY [32]byte, amount *big.Int, r8x [32]byte, r8y [32]byte, s [32]byte) (*types.Transaction, error) {
	return _MiddlewareContract.contract.Transact(opts, "_depositExistence", fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// DepositExistence is a paid mutator transaction binding the contract method 0xea5ef999.
//
// Solidity: function _depositExistence(bytes32 fromX, bytes32 fromY, bytes32 toX, bytes32 toY, uint256 amount, bytes32 r8x, bytes32 r8y, bytes32 s) returns()
func (_MiddlewareContract *MiddlewareContractSession) DepositExistence(fromX [32]byte, fromY [32]byte, toX [32]byte, toY [32]byte, amount *big.Int, r8x [32]byte, r8y [32]byte, s [32]byte) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.DepositExistence(&_MiddlewareContract.TransactOpts, fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// DepositExistence is a paid mutator transaction binding the contract method 0xea5ef999.
//
// Solidity: function _depositExistence(bytes32 fromX, bytes32 fromY, bytes32 toX, bytes32 toY, uint256 amount, bytes32 r8x, bytes32 r8y, bytes32 s) returns()
func (_MiddlewareContract *MiddlewareContractTransactorSession) DepositExistence(fromX [32]byte, fromY [32]byte, toX [32]byte, toY [32]byte, amount *big.Int, r8x [32]byte, r8y [32]byte, s [32]byte) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.DepositExistence(&_MiddlewareContract.TransactOpts, fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// DepositRegister is a paid mutator transaction binding the contract method 0x5caba884.
//
// Solidity: function _depositRegister(bytes32 fromX, bytes32 fromY, bytes32 toX, bytes32 toY, uint256 amount, bytes32 r8x, bytes32 r8y, bytes32 s) returns()
func (_MiddlewareContract *MiddlewareContractTransactor) DepositRegister(opts *bind.TransactOpts, fromX [32]byte, fromY [32]byte, toX [32]byte, toY [32]byte, amount *big.Int, r8x [32]byte, r8y [32]byte, s [32]byte) (*types.Transaction, error) {
	return _MiddlewareContract.contract.Transact(opts, "_depositRegister", fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// DepositRegister is a paid mutator transaction binding the contract method 0x5caba884.
//
// Solidity: function _depositRegister(bytes32 fromX, bytes32 fromY, bytes32 toX, bytes32 toY, uint256 amount, bytes32 r8x, bytes32 r8y, bytes32 s) returns()
func (_MiddlewareContract *MiddlewareContractSession) DepositRegister(fromX [32]byte, fromY [32]byte, toX [32]byte, toY [32]byte, amount *big.Int, r8x [32]byte, r8y [32]byte, s [32]byte) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.DepositRegister(&_MiddlewareContract.TransactOpts, fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// DepositRegister is a paid mutator transaction binding the contract method 0x5caba884.
//
// Solidity: function _depositRegister(bytes32 fromX, bytes32 fromY, bytes32 toX, bytes32 toY, uint256 amount, bytes32 r8x, bytes32 r8y, bytes32 s) returns()
func (_MiddlewareContract *MiddlewareContractTransactorSession) DepositRegister(fromX [32]byte, fromY [32]byte, toX [32]byte, toY [32]byte, amount *big.Int, r8x [32]byte, r8y [32]byte, s [32]byte) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.DepositRegister(&_MiddlewareContract.TransactOpts, fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// Deposit is a paid mutator transaction binding the contract method 0xce04cbb3.
//
// Solidity: function deposit(bytes32 fromX, bytes32 fromY, bytes32 toX, bytes32 toY, uint256 amount, bytes32 r8x, bytes32 r8y, bytes32 s) payable returns()
func (_MiddlewareContract *MiddlewareContractTransactor) Deposit(opts *bind.TransactOpts, fromX [32]byte, fromY [32]byte, toX [32]byte, toY [32]byte, amount *big.Int, r8x [32]byte, r8y [32]byte, s [32]byte) (*types.Transaction, error) {
	return _MiddlewareContract.contract.Transact(opts, "deposit", fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// Deposit is a paid mutator transaction binding the contract method 0xce04cbb3.
//
// Solidity: function deposit(bytes32 fromX, bytes32 fromY, bytes32 toX, bytes32 toY, uint256 amount, bytes32 r8x, bytes32 r8y, bytes32 s) payable returns()
func (_MiddlewareContract *MiddlewareContractSession) Deposit(fromX [32]byte, fromY [32]byte, toX [32]byte, toY [32]byte, amount *big.Int, r8x [32]byte, r8y [32]byte, s [32]byte) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.Deposit(&_MiddlewareContract.TransactOpts, fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// Deposit is a paid mutator transaction binding the contract method 0xce04cbb3.
//
// Solidity: function deposit(bytes32 fromX, bytes32 fromY, bytes32 toX, bytes32 toY, uint256 amount, bytes32 r8x, bytes32 r8y, bytes32 s) payable returns()
func (_MiddlewareContract *MiddlewareContractTransactorSession) Deposit(fromX [32]byte, fromY [32]byte, toX [32]byte, toY [32]byte, amount *big.Int, r8x [32]byte, r8y [32]byte, s [32]byte) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.Deposit(&_MiddlewareContract.TransactOpts, fromX, fromY, toX, toY, amount, r8x, r8y, s)
}

// GetDepositRegisterRoot is a paid mutator transaction binding the contract method 0x5998ee74.
//
// Solidity: function getDepositRegisterRoot() returns()
func (_MiddlewareContract *MiddlewareContractTransactor) GetDepositRegisterRoot(opts *bind.TransactOpts) (*types.Transaction, error) {
	return _MiddlewareContract.contract.Transact(opts, "getDepositRegisterRoot")
}

// GetDepositRegisterRoot is a paid mutator transaction binding the contract method 0x5998ee74.
//
// Solidity: function getDepositRegisterRoot() returns()
func (_MiddlewareContract *MiddlewareContractSession) GetDepositRegisterRoot() (*types.Transaction, error) {
	return _MiddlewareContract.Contract.GetDepositRegisterRoot(&_MiddlewareContract.TransactOpts)
}

// GetDepositRegisterRoot is a paid mutator transaction binding the contract method 0x5998ee74.
//
// Solidity: function getDepositRegisterRoot() returns()
func (_MiddlewareContract *MiddlewareContractTransactorSession) GetDepositRegisterRoot() (*types.Transaction, error) {
	return _MiddlewareContract.Contract.GetDepositRegisterRoot(&_MiddlewareContract.TransactOpts)
}

// VerifyProofDepositRegister is a paid mutator transaction binding the contract method 0xd5d31676.
//
// Solidity: function verifyProof_DepositRegister(uint256[2] _pA, uint256[2][2] _pB, uint256[2] _pC, uint256[4] _pubSignals) returns()
func (_MiddlewareContract *MiddlewareContractTransactor) VerifyProofDepositRegister(opts *bind.TransactOpts, _pA [2]*big.Int, _pB [2][2]*big.Int, _pC [2]*big.Int, _pubSignals [4]*big.Int) (*types.Transaction, error) {
	return _MiddlewareContract.contract.Transact(opts, "verifyProof_DepositRegister", _pA, _pB, _pC, _pubSignals)
}

// VerifyProofDepositRegister is a paid mutator transaction binding the contract method 0xd5d31676.
//
// Solidity: function verifyProof_DepositRegister(uint256[2] _pA, uint256[2][2] _pB, uint256[2] _pC, uint256[4] _pubSignals) returns()
func (_MiddlewareContract *MiddlewareContractSession) VerifyProofDepositRegister(_pA [2]*big.Int, _pB [2][2]*big.Int, _pC [2]*big.Int, _pubSignals [4]*big.Int) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.VerifyProofDepositRegister(&_MiddlewareContract.TransactOpts, _pA, _pB, _pC, _pubSignals)
}

// VerifyProofDepositRegister is a paid mutator transaction binding the contract method 0xd5d31676.
//
// Solidity: function verifyProof_DepositRegister(uint256[2] _pA, uint256[2][2] _pB, uint256[2] _pC, uint256[4] _pubSignals) returns()
func (_MiddlewareContract *MiddlewareContractTransactorSession) VerifyProofDepositRegister(_pA [2]*big.Int, _pB [2][2]*big.Int, _pC [2]*big.Int, _pubSignals [4]*big.Int) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.VerifyProofDepositRegister(&_MiddlewareContract.TransactOpts, _pA, _pB, _pC, _pubSignals)
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

// MiddlewareContractDGetBytes32Iterator is returned from FilterDGetBytes32 and is used to iterate over the raw logs and unpacked data for DGetBytes32 events raised by the MiddlewareContract contract.
type MiddlewareContractDGetBytes32Iterator struct {
	Event *MiddlewareContractDGetBytes32 // Event containing the contract specifics and raw log

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
func (it *MiddlewareContractDGetBytes32Iterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(MiddlewareContractDGetBytes32)
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
		it.Event = new(MiddlewareContractDGetBytes32)
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
func (it *MiddlewareContractDGetBytes32Iterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *MiddlewareContractDGetBytes32Iterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// MiddlewareContractDGetBytes32 represents a DGetBytes32 event raised by the MiddlewareContract contract.
type MiddlewareContractDGetBytes32 struct {
	Value [32]byte
	Raw   types.Log // Blockchain specific contextual infos
}

// FilterDGetBytes32 is a free log retrieval operation binding the contract event 0x6d6933b127aa9e6b219cadc33b8f72b9d6528ae4397fc9da80cbd210eb970d49.
//
// Solidity: event dGetBytes32(bytes32 value)
func (_MiddlewareContract *MiddlewareContractFilterer) FilterDGetBytes32(opts *bind.FilterOpts) (*MiddlewareContractDGetBytes32Iterator, error) {

	logs, sub, err := _MiddlewareContract.contract.FilterLogs(opts, "dGetBytes32")
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractDGetBytes32Iterator{contract: _MiddlewareContract.contract, event: "dGetBytes32", logs: logs, sub: sub}, nil
}

// WatchDGetBytes32 is a free log subscription operation binding the contract event 0x6d6933b127aa9e6b219cadc33b8f72b9d6528ae4397fc9da80cbd210eb970d49.
//
// Solidity: event dGetBytes32(bytes32 value)
func (_MiddlewareContract *MiddlewareContractFilterer) WatchDGetBytes32(opts *bind.WatchOpts, sink chan<- *MiddlewareContractDGetBytes32) (event.Subscription, error) {

	logs, sub, err := _MiddlewareContract.contract.WatchLogs(opts, "dGetBytes32")
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(MiddlewareContractDGetBytes32)
				if err := _MiddlewareContract.contract.UnpackLog(event, "dGetBytes32", log); err != nil {
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

// ParseDGetBytes32 is a log parse operation binding the contract event 0x6d6933b127aa9e6b219cadc33b8f72b9d6528ae4397fc9da80cbd210eb970d49.
//
// Solidity: event dGetBytes32(bytes32 value)
func (_MiddlewareContract *MiddlewareContractFilterer) ParseDGetBytes32(log types.Log) (*MiddlewareContractDGetBytes32, error) {
	event := new(MiddlewareContractDGetBytes32)
	if err := _MiddlewareContract.contract.UnpackLog(event, "dGetBytes32", log); err != nil {
		return nil, err
	}
	event.Raw = log
	return event, nil
}

// MiddlewareContractDGetBytes32ArrayIterator is returned from FilterDGetBytes32Array and is used to iterate over the raw logs and unpacked data for DGetBytes32Array events raised by the MiddlewareContract contract.
type MiddlewareContractDGetBytes32ArrayIterator struct {
	Event *MiddlewareContractDGetBytes32Array // Event containing the contract specifics and raw log

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
func (it *MiddlewareContractDGetBytes32ArrayIterator) Next() bool {
	// If the iterator failed, stop iterating
	if it.fail != nil {
		return false
	}
	// If the iterator completed, deliver directly whatever's available
	if it.done {
		select {
		case log := <-it.logs:
			it.Event = new(MiddlewareContractDGetBytes32Array)
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
		it.Event = new(MiddlewareContractDGetBytes32Array)
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
func (it *MiddlewareContractDGetBytes32ArrayIterator) Error() error {
	return it.fail
}

// Close terminates the iteration process, releasing any pending underlying
// resources.
func (it *MiddlewareContractDGetBytes32ArrayIterator) Close() error {
	it.sub.Unsubscribe()
	return nil
}

// MiddlewareContractDGetBytes32Array represents a DGetBytes32Array event raised by the MiddlewareContract contract.
type MiddlewareContractDGetBytes32Array struct {
	Arr [][32]byte
	Raw types.Log // Blockchain specific contextual infos
}

// FilterDGetBytes32Array is a free log retrieval operation binding the contract event 0xde3ed806731f9dc4bf2815d4ece74b084112041334fbb7adaa8117cabc9d81dc.
//
// Solidity: event dGetBytes32Array(bytes32[] arr)
func (_MiddlewareContract *MiddlewareContractFilterer) FilterDGetBytes32Array(opts *bind.FilterOpts) (*MiddlewareContractDGetBytes32ArrayIterator, error) {

	logs, sub, err := _MiddlewareContract.contract.FilterLogs(opts, "dGetBytes32Array")
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractDGetBytes32ArrayIterator{contract: _MiddlewareContract.contract, event: "dGetBytes32Array", logs: logs, sub: sub}, nil
}

// WatchDGetBytes32Array is a free log subscription operation binding the contract event 0xde3ed806731f9dc4bf2815d4ece74b084112041334fbb7adaa8117cabc9d81dc.
//
// Solidity: event dGetBytes32Array(bytes32[] arr)
func (_MiddlewareContract *MiddlewareContractFilterer) WatchDGetBytes32Array(opts *bind.WatchOpts, sink chan<- *MiddlewareContractDGetBytes32Array) (event.Subscription, error) {

	logs, sub, err := _MiddlewareContract.contract.WatchLogs(opts, "dGetBytes32Array")
	if err != nil {
		return nil, err
	}
	return event.NewSubscription(func(quit <-chan struct{}) error {
		defer sub.Unsubscribe()
		for {
			select {
			case log := <-logs:
				// New log arrived, parse the event and forward to the user
				event := new(MiddlewareContractDGetBytes32Array)
				if err := _MiddlewareContract.contract.UnpackLog(event, "dGetBytes32Array", log); err != nil {
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

// ParseDGetBytes32Array is a log parse operation binding the contract event 0xde3ed806731f9dc4bf2815d4ece74b084112041334fbb7adaa8117cabc9d81dc.
//
// Solidity: event dGetBytes32Array(bytes32[] arr)
func (_MiddlewareContract *MiddlewareContractFilterer) ParseDGetBytes32Array(log types.Log) (*MiddlewareContractDGetBytes32Array, error) {
	event := new(MiddlewareContractDGetBytes32Array)
	if err := _MiddlewareContract.contract.UnpackLog(event, "dGetBytes32Array", log); err != nil {
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
	FromX  [32]byte
	FromY  [32]byte
	ToX    [32]byte
	ToY    [32]byte
	Amount *big.Int
	R8x    [32]byte
	R8y    [32]byte
	S      [32]byte
	Raw    types.Log // Blockchain specific contextual infos
}

// FilterEDepositExistence is a free log retrieval operation binding the contract event 0x045362c160fc977f2e7bf470adfeb18f9cbd59563fa6d529708234815f4f20f8.
//
// Solidity: event eDepositExistence(bytes32 fromX, bytes32 fromY, bytes32 toX, bytes32 toY, uint256 amount, bytes32 r8x, bytes32 r8y, bytes32 s)
func (_MiddlewareContract *MiddlewareContractFilterer) FilterEDepositExistence(opts *bind.FilterOpts) (*MiddlewareContractEDepositExistenceIterator, error) {

	logs, sub, err := _MiddlewareContract.contract.FilterLogs(opts, "eDepositExistence")
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractEDepositExistenceIterator{contract: _MiddlewareContract.contract, event: "eDepositExistence", logs: logs, sub: sub}, nil
}

// WatchEDepositExistence is a free log subscription operation binding the contract event 0x045362c160fc977f2e7bf470adfeb18f9cbd59563fa6d529708234815f4f20f8.
//
// Solidity: event eDepositExistence(bytes32 fromX, bytes32 fromY, bytes32 toX, bytes32 toY, uint256 amount, bytes32 r8x, bytes32 r8y, bytes32 s)
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

// ParseEDepositExistence is a log parse operation binding the contract event 0x045362c160fc977f2e7bf470adfeb18f9cbd59563fa6d529708234815f4f20f8.
//
// Solidity: event eDepositExistence(bytes32 fromX, bytes32 fromY, bytes32 toX, bytes32 toY, uint256 amount, bytes32 r8x, bytes32 r8y, bytes32 s)
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
	FromX  [32]byte
	FromY  [32]byte
	ToX    [32]byte
	ToY    [32]byte
	Amount *big.Int
	R8x    [32]byte
	R8y    [32]byte
	S      [32]byte
	Raw    types.Log // Blockchain specific contextual infos
}

// FilterEDepositRegister is a free log retrieval operation binding the contract event 0xf913a91cb7941f332eb9fb4a863f361fc6430a84a2523d30a925e0f0d834d31d.
//
// Solidity: event eDepositRegister(bytes32 fromX, bytes32 fromY, bytes32 toX, bytes32 toY, uint256 amount, bytes32 r8x, bytes32 r8y, bytes32 s)
func (_MiddlewareContract *MiddlewareContractFilterer) FilterEDepositRegister(opts *bind.FilterOpts) (*MiddlewareContractEDepositRegisterIterator, error) {

	logs, sub, err := _MiddlewareContract.contract.FilterLogs(opts, "eDepositRegister")
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractEDepositRegisterIterator{contract: _MiddlewareContract.contract, event: "eDepositRegister", logs: logs, sub: sub}, nil
}

// WatchEDepositRegister is a free log subscription operation binding the contract event 0xf913a91cb7941f332eb9fb4a863f361fc6430a84a2523d30a925e0f0d834d31d.
//
// Solidity: event eDepositRegister(bytes32 fromX, bytes32 fromY, bytes32 toX, bytes32 toY, uint256 amount, bytes32 r8x, bytes32 r8y, bytes32 s)
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

// ParseEDepositRegister is a log parse operation binding the contract event 0xf913a91cb7941f332eb9fb4a863f361fc6430a84a2523d30a925e0f0d834d31d.
//
// Solidity: event eDepositRegister(bytes32 fromX, bytes32 fromY, bytes32 toX, bytes32 toY, uint256 amount, bytes32 r8x, bytes32 r8y, bytes32 s)
func (_MiddlewareContract *MiddlewareContractFilterer) ParseEDepositRegister(log types.Log) (*MiddlewareContractEDepositRegister, error) {
	event := new(MiddlewareContractEDepositRegister)
	if err := _MiddlewareContract.contract.UnpackLog(event, "eDepositRegister", log); err != nil {
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
