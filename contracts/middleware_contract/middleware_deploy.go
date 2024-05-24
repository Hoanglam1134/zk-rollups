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
	ABI: "[{\"inputs\":[{\"internalType\":\"address\",\"name\":\"_mimcContractAddress\",\"type\":\"address\"},{\"internalType\":\"uint256\",\"name\":\"initializationAccountRoot\",\"type\":\"uint256\"}],\"stateMutability\":\"nonpayable\",\"type\":\"constructor\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"bool\",\"name\":\"state\",\"type\":\"bool\"}],\"name\":\"dDebug\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"address\",\"name\":\"addr\",\"type\":\"address\"}],\"name\":\"dGetAddress\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"bool\",\"name\":\"b\",\"type\":\"bool\"}],\"name\":\"dGetBool\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"bytes20\",\"name\":\"addr\",\"type\":\"bytes20\"}],\"name\":\"dGetBytes20\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"string\",\"name\":\"str\",\"type\":\"string\"}],\"name\":\"dGetString\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"u\",\"type\":\"uint256\"}],\"name\":\"dGetUint\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"value\",\"type\":\"uint256\"}],\"name\":\"dGetUint256\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"uint256[]\",\"name\":\"arr\",\"type\":\"uint256[]\"}],\"name\":\"dGetUint256Array\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"fromX\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"fromY\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"toX\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"toY\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"r8x\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"r8y\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"s\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"address\",\"name\":\"ecdsaAddress\",\"type\":\"address\"}],\"name\":\"eDepositExistence\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"fromX\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"fromY\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"toX\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"toY\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"r8x\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"r8y\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"s\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"address\",\"name\":\"ecdsaAddress\",\"type\":\"address\"}],\"name\":\"eDepositRegister\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"fromX\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"fromY\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"toX\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"toY\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"r8x\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"r8y\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"s\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"address\",\"name\":\"ecdsaAddress\",\"type\":\"address\"}],\"name\":\"eTransfer\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"fromX\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"fromY\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"toX\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"toY\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"r8x\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"r8y\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"s\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"address\",\"name\":\"ecdsaAddress\",\"type\":\"address\"}],\"name\":\"eWithdraw\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"bool\",\"name\":\"b\",\"type\":\"bool\"}],\"name\":\"sDepositRegister\",\"type\":\"event\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"fromX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"fromY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8x\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8y\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"s\",\"type\":\"uint256\"}],\"name\":\"_depositExistence\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"fromX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"fromY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8x\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8y\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"s\",\"type\":\"uint256\"}],\"name\":\"_depositRegister\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[],\"name\":\"coordinator\",\"outputs\":[{\"internalType\":\"address\",\"name\":\"\",\"type\":\"address\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"fromX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"fromY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8x\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8y\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"s\",\"type\":\"uint256\"}],\"name\":\"deposit\",\"outputs\":[],\"stateMutability\":\"payable\",\"type\":\"function\"},{\"inputs\":[],\"name\":\"getBalance\",\"outputs\":[{\"internalType\":\"uint256\",\"name\":\"\",\"type\":\"uint256\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[],\"name\":\"mimc\",\"outputs\":[{\"internalType\":\"contractIMiMC\",\"name\":\"\",\"type\":\"address\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256[]\",\"name\":\"arr\",\"type\":\"uint256[]\"}],\"name\":\"mimcMultiHash\",\"outputs\":[{\"internalType\":\"uint256\",\"name\":\"\",\"type\":\"uint256\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"fromX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"fromY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8x\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8y\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"s\",\"type\":\"uint256\"}],\"name\":\"transfer\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"addresspayable\",\"name\":\"recipient\",\"type\":\"address\"},{\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"}],\"name\":\"transferEther\",\"outputs\":[],\"stateMutability\":\"payable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"fromX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"fromY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8x\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8y\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"s\",\"type\":\"uint256\"}],\"name\":\"withdraw\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"}]",
	Bin: "0x60806040527f30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000015f5560405180608001604052807f0b077ec0500876486f9b8860e222cee2a5fc339da0c9b953ce54cb6b7a21c43181526020017f2d3ec69fee53ea98bd7c586d2aa549805fe2c51423846834fc028aeb89c5dc2e81526020017f11dfa7319c596f65f19a20f2f8aec51c64d8d6eee2de849e4e8fd005510294c081526020017f21a86a490fe7406343ca077b0523e23180884d29110fc0c92e1ca09c63581e1f81525060019060046100d89291906101ba565b503480156100e4575f80fd5b506040516115c33803806115c3833981810160405281019061010691906102a6565b8160085f6101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff1602179055505f600b819055503360075f6101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550600681908060018154018082558091505060019003905f5260205f20015f909190919091505550506102e4565b82600481019282156101e9579160200282015b828111156101e85782518255916020019190600101906101cd565b5b5090506101f691906101fa565b5090565b5b80821115610211575f815f9055506001016101fb565b5090565b5f80fd5b5f73ffffffffffffffffffffffffffffffffffffffff82169050919050565b5f61024282610219565b9050919050565b61025281610238565b811461025c575f80fd5b50565b5f8151905061026d81610249565b92915050565b5f819050919050565b61028581610273565b811461028f575f80fd5b50565b5f815190506102a08161027c565b92915050565b5f80604083850312156102bc576102bb610215565b5b5f6102c98582860161025f565b92505060206102da85828601610292565b9150509250929050565b6112d2806102f15f395ff3fe608060405260043610610090575f3560e01c8063be722daf11610058578063be722daf14610156578063c6bcf07014610192578063ed3d67dd146101ba578063fc085627146101e2578063ffe41ea41461020a57610090565b806305b1137b146100945780630a009097146100b057806312065fe0146100da5780631c5237d11461010457806376385cc31461012c575b5f80fd5b6100ae60048036038101906100a99190610a81565b610226565b005b3480156100bb575f80fd5b506100c461033c565b6040516100d19190610adf565b60405180910390f35b3480156100e5575f80fd5b506100ee610361565b6040516100fb9190610b07565b60405180910390f35b34801561010f575f80fd5b5061012a60048036038101906101259190610b20565b610368565b005b348015610137575f80fd5b506101406105eb565b60405161014d9190610c2c565b60405180910390f35b348015610161575f80fd5b5061017c60048036038101906101779190610d95565b610610565b6040516101899190610b07565b60405180910390f35b34801561019d575f80fd5b506101b860048036038101906101b39190610b20565b61074e565b005b3480156101c5575f80fd5b506101e060048036038101906101db9190610b20565b6107ae565b005b3480156101ed575f80fd5b5061020860048036038101906102039190610b20565b610834565b005b610224600480360381019061021f9190610b20565b610885565b005b47670de0b6b3a76400008261023b9190610e09565b111561027c576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161027390610ea4565b60405180910390fd5b5f8273ffffffffffffffffffffffffffffffffffffffff16670de0b6b3a7640000836102a89190610e09565b6040516102b490610eef565b5f6040518083038185875af1925050503d805f81146102ee576040519150601f19603f3d011682016040523d82523d5f602084013e6102f3565b606091505b5050905080610337576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161032e90610f4d565b60405180910390fd5b505050565b60075f9054906101000a900473ffffffffffffffffffffffffffffffffffffffff1681565b5f47905090565b7f766ba33eed9390bf74894ab64d15834eddb4095e00203e303f9377052e41bb6960405161039590610fb5565b60405180910390a16001600b5f8282546103af9190610fd3565b925050819055505f600467ffffffffffffffff8111156103d2576103d1610c59565b5b6040519080825280602002602001820160405280156104005781602001602082028036833780820191505090505b50905086815f8151811061041757610416611006565b5b602002602001018181525050858160018151811061043857610437611006565b5b602002602001018181525050848160028151811061045957610458611006565b5b6020026020010181815250505f8160038151811061047a57610479611006565b5b6020026020010181815250505f600667ffffffffffffffff8111156104a2576104a1610c59565b5b6040519080825280602002602001820160405280156104d05781602001602082028036833780820191505090505b50905089815f815181106104e7576104e6611006565b5b602002602001018181525050888160018151811061050857610507611006565b5b602002602001018181525050878160028151811061052957610528611006565b5b602002602001018181525050868160038151811061054a57610549611006565b5b6020026020010181815250505f8160048151811061056b5761056a611006565b5b602002602001018181525050858160058151811061058c5761058b611006565b5b6020026020010181815250507f751175c6d256080f1dc18961160a34eaea9ed4a1cdfb588965c1e6773f0b1b5d8a8a8a8a8a8a8a8a336040516105d799989796959493929190611033565b60405180910390a150505050505050505050565b60085f9054906101000a900473ffffffffffffffffffffffffffffffffffffffff1681565b5f805f90505f5b8351811015610744575f545f5485838151811061063757610636611006565b5b602002602001015161064991906110eb565b5f5460085f9054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663d15ca1095f5489878151811061069d5761069c611006565b5b60200260200101516106af91906110eb565b876040518363ffffffff1660e01b81526004016106cd92919061111b565b602060405180830381865afa1580156106e8573d5f803e3d5ffd5b505050506040513d601f19601f8201168201806040525081019061070c9190611156565b856107179190610fd3565b61072191906110eb565b61072b9190610fd3565b61073591906110eb565b91508080600101915050610617565b5080915050919050565b5f33905061075c8186610226565b7f585fdad1bf3a83dd57e4e7e3fa8b91b9b2a9a2b243fa4f5874b0a2fb88fd711589898989898989893360405161079b99989796959493929190611033565b60405180910390a1505050505050505050565b7f766ba33eed9390bf74894ab64d15834eddb4095e00203e303f9377052e41bb696040516107db906111cb565b60405180910390a17f491577f128894a90b4c9e9030d8c12bb9eef10c882449617c6fce7fc933041f388888888888888883360405161082299989796959493929190611033565b60405180910390a15050505050505050565b7f5e79ad63e9e97283e51f080decc9f9596a07fd0a490fd1ae5bbdba9637618c0988888888888888883360405161087399989796959493929190611033565b60405180910390a15050505050505050565b34670de0b6b3a76400008561089a9190610e09565b11156108db576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016108d290611233565b60405180910390fd5b5f606087876040516020016108f1929190611271565b60405160208183030381529060405280519060200120901b60601c905060055f8273ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f9054906101000a900460ff16156109725761096d89898989898989896107ae565b6109d8565b600160055f8373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff0219169083151502179055506109d78989898989898989610368565b5b505050505050505050565b5f604051905090565b5f80fd5b5f80fd5b5f73ffffffffffffffffffffffffffffffffffffffff82169050919050565b5f610a1d826109f4565b9050919050565b610a2d81610a13565b8114610a37575f80fd5b50565b5f81359050610a4881610a24565b92915050565b5f819050919050565b610a6081610a4e565b8114610a6a575f80fd5b50565b5f81359050610a7b81610a57565b92915050565b5f8060408385031215610a9757610a966109ec565b5b5f610aa485828601610a3a565b9250506020610ab585828601610a6d565b9150509250929050565b5f610ac9826109f4565b9050919050565b610ad981610abf565b82525050565b5f602082019050610af25f830184610ad0565b92915050565b610b0181610a4e565b82525050565b5f602082019050610b1a5f830184610af8565b92915050565b5f805f805f805f80610100898b031215610b3d57610b3c6109ec565b5b5f610b4a8b828c01610a6d565b9850506020610b5b8b828c01610a6d565b9750506040610b6c8b828c01610a6d565b9650506060610b7d8b828c01610a6d565b9550506080610b8e8b828c01610a6d565b94505060a0610b9f8b828c01610a6d565b93505060c0610bb08b828c01610a6d565b92505060e0610bc18b828c01610a6d565b9150509295985092959890939650565b5f819050919050565b5f610bf4610bef610bea846109f4565b610bd1565b6109f4565b9050919050565b5f610c0582610bda565b9050919050565b5f610c1682610bfb565b9050919050565b610c2681610c0c565b82525050565b5f602082019050610c3f5f830184610c1d565b92915050565b5f80fd5b5f601f19601f8301169050919050565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52604160045260245ffd5b610c8f82610c49565b810181811067ffffffffffffffff82111715610cae57610cad610c59565b5b80604052505050565b5f610cc06109e3565b9050610ccc8282610c86565b919050565b5f67ffffffffffffffff821115610ceb57610cea610c59565b5b602082029050602081019050919050565b5f80fd5b5f610d12610d0d84610cd1565b610cb7565b90508083825260208201905060208402830185811115610d3557610d34610cfc565b5b835b81811015610d5e5780610d4a8882610a6d565b845260208401935050602081019050610d37565b5050509392505050565b5f82601f830112610d7c57610d7b610c45565b5b8135610d8c848260208601610d00565b91505092915050565b5f60208284031215610daa57610da96109ec565b5b5f82013567ffffffffffffffff811115610dc757610dc66109f0565b5b610dd384828501610d68565b91505092915050565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52601160045260245ffd5b5f610e1382610a4e565b9150610e1e83610a4e565b9250828202610e2c81610a4e565b91508282048414831517610e4357610e42610ddc565b5b5092915050565b5f82825260208201905092915050565b7f496e73756666696369656e742062616c616e63650000000000000000000000005f82015250565b5f610e8e601483610e4a565b9150610e9982610e5a565b602082019050919050565b5f6020820190508181035f830152610ebb81610e82565b9050919050565b5f81905092915050565b50565b5f610eda5f83610ec2565b9150610ee582610ecc565b5f82019050919050565b5f610ef982610ecf565b9150819050919050565b7f5472616e73666572206661696c656400000000000000000000000000000000005f82015250565b5f610f37600f83610e4a565b9150610f4282610f03565b602082019050919050565b5f6020820190508181035f830152610f6481610f2b565b9050919050565b7f6465706f736974526567697374657220697320747269676765726564210000005f82015250565b5f610f9f601d83610e4a565b9150610faa82610f6b565b602082019050919050565b5f6020820190508181035f830152610fcc81610f93565b9050919050565b5f610fdd82610a4e565b9150610fe883610a4e565b925082820190508082111561100057610fff610ddc565b5b92915050565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52603260045260245ffd5b5f610120820190506110475f83018c610af8565b611054602083018b610af8565b611061604083018a610af8565b61106e6060830189610af8565b61107b6080830188610af8565b61108860a0830187610af8565b61109560c0830186610af8565b6110a260e0830185610af8565b6110b0610100830184610ad0565b9a9950505050505050505050565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52601260045260245ffd5b5f6110f582610a4e565b915061110083610a4e565b9250826111105761110f6110be565b5b828206905092915050565b5f60408201905061112e5f830185610af8565b61113b6020830184610af8565b9392505050565b5f8151905061115081610a57565b92915050565b5f6020828403121561116b5761116a6109ec565b5b5f61117884828501611142565b91505092915050565b7f6465706f7369744578697374656e6365206973207472696767657265642100005f82015250565b5f6111b5601e83610e4a565b91506111c082611181565b602082019050919050565b5f6020820190508181035f8301526111e2816111a9565b9050919050565b7f616d6f756e742a3165313820213d206d73672e76616c756500000000000000005f82015250565b5f61121d601883610e4a565b9150611228826111e9565b602082019050919050565b5f6020820190508181035f83015261124a81611211565b9050919050565b5f819050919050565b61126b61126682610a4e565b611251565b82525050565b5f61127c828561125a565b60208201915061128c828461125a565b602082019150819050939250505056fea264697066735822122087c364f5dc6f468a45f767ba76d621e7eb0fc5fcdcd5312e06cef272c8fb711c64736f6c63430008190033",
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

// Coordinator is a free data retrieval call binding the contract method 0x0a009097.
//
// Solidity: function coordinator() view returns(address)
func (_MiddlewareContract *MiddlewareContractCaller) Coordinator(opts *bind.CallOpts) (common.Address, error) {
	var out []interface{}
	err := _MiddlewareContract.contract.Call(opts, &out, "coordinator")

	if err != nil {
		return *new(common.Address), err
	}

	out0 := *abi.ConvertType(out[0], new(common.Address)).(*common.Address)

	return out0, err

}

// Coordinator is a free data retrieval call binding the contract method 0x0a009097.
//
// Solidity: function coordinator() view returns(address)
func (_MiddlewareContract *MiddlewareContractSession) Coordinator() (common.Address, error) {
	return _MiddlewareContract.Contract.Coordinator(&_MiddlewareContract.CallOpts)
}

// Coordinator is a free data retrieval call binding the contract method 0x0a009097.
//
// Solidity: function coordinator() view returns(address)
func (_MiddlewareContract *MiddlewareContractCallerSession) Coordinator() (common.Address, error) {
	return _MiddlewareContract.Contract.Coordinator(&_MiddlewareContract.CallOpts)
}

// GetBalance is a free data retrieval call binding the contract method 0x12065fe0.
//
// Solidity: function getBalance() view returns(uint256)
func (_MiddlewareContract *MiddlewareContractCaller) GetBalance(opts *bind.CallOpts) (*big.Int, error) {
	var out []interface{}
	err := _MiddlewareContract.contract.Call(opts, &out, "getBalance")

	if err != nil {
		return *new(*big.Int), err
	}

	out0 := *abi.ConvertType(out[0], new(*big.Int)).(**big.Int)

	return out0, err

}

// GetBalance is a free data retrieval call binding the contract method 0x12065fe0.
//
// Solidity: function getBalance() view returns(uint256)
func (_MiddlewareContract *MiddlewareContractSession) GetBalance() (*big.Int, error) {
	return _MiddlewareContract.Contract.GetBalance(&_MiddlewareContract.CallOpts)
}

// GetBalance is a free data retrieval call binding the contract method 0x12065fe0.
//
// Solidity: function getBalance() view returns(uint256)
func (_MiddlewareContract *MiddlewareContractCallerSession) GetBalance() (*big.Int, error) {
	return _MiddlewareContract.Contract.GetBalance(&_MiddlewareContract.CallOpts)
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

// TransferEther is a paid mutator transaction binding the contract method 0x05b1137b.
//
// Solidity: function transferEther(address recipient, uint256 amount) payable returns()
func (_MiddlewareContract *MiddlewareContractTransactor) TransferEther(opts *bind.TransactOpts, recipient common.Address, amount *big.Int) (*types.Transaction, error) {
	return _MiddlewareContract.contract.Transact(opts, "transferEther", recipient, amount)
}

// TransferEther is a paid mutator transaction binding the contract method 0x05b1137b.
//
// Solidity: function transferEther(address recipient, uint256 amount) payable returns()
func (_MiddlewareContract *MiddlewareContractSession) TransferEther(recipient common.Address, amount *big.Int) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.TransferEther(&_MiddlewareContract.TransactOpts, recipient, amount)
}

// TransferEther is a paid mutator transaction binding the contract method 0x05b1137b.
//
// Solidity: function transferEther(address recipient, uint256 amount) payable returns()
func (_MiddlewareContract *MiddlewareContractTransactorSession) TransferEther(recipient common.Address, amount *big.Int) (*types.Transaction, error) {
	return _MiddlewareContract.Contract.TransferEther(&_MiddlewareContract.TransactOpts, recipient, amount)
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
	FromX        *big.Int
	FromY        *big.Int
	ToX          *big.Int
	ToY          *big.Int
	Amount       *big.Int
	R8x          *big.Int
	R8y          *big.Int
	S            *big.Int
	EcdsaAddress common.Address
	Raw          types.Log // Blockchain specific contextual infos
}

// FilterEDepositExistence is a free log retrieval operation binding the contract event 0x491577f128894a90b4c9e9030d8c12bb9eef10c882449617c6fce7fc933041f3.
//
// Solidity: event eDepositExistence(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s, address ecdsaAddress)
func (_MiddlewareContract *MiddlewareContractFilterer) FilterEDepositExistence(opts *bind.FilterOpts) (*MiddlewareContractEDepositExistenceIterator, error) {

	logs, sub, err := _MiddlewareContract.contract.FilterLogs(opts, "eDepositExistence")
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractEDepositExistenceIterator{contract: _MiddlewareContract.contract, event: "eDepositExistence", logs: logs, sub: sub}, nil
}

// WatchEDepositExistence is a free log subscription operation binding the contract event 0x491577f128894a90b4c9e9030d8c12bb9eef10c882449617c6fce7fc933041f3.
//
// Solidity: event eDepositExistence(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s, address ecdsaAddress)
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

// ParseEDepositExistence is a log parse operation binding the contract event 0x491577f128894a90b4c9e9030d8c12bb9eef10c882449617c6fce7fc933041f3.
//
// Solidity: event eDepositExistence(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s, address ecdsaAddress)
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
	FromX        *big.Int
	FromY        *big.Int
	ToX          *big.Int
	ToY          *big.Int
	Amount       *big.Int
	R8x          *big.Int
	R8y          *big.Int
	S            *big.Int
	EcdsaAddress common.Address
	Raw          types.Log // Blockchain specific contextual infos
}

// FilterEDepositRegister is a free log retrieval operation binding the contract event 0x751175c6d256080f1dc18961160a34eaea9ed4a1cdfb588965c1e6773f0b1b5d.
//
// Solidity: event eDepositRegister(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s, address ecdsaAddress)
func (_MiddlewareContract *MiddlewareContractFilterer) FilterEDepositRegister(opts *bind.FilterOpts) (*MiddlewareContractEDepositRegisterIterator, error) {

	logs, sub, err := _MiddlewareContract.contract.FilterLogs(opts, "eDepositRegister")
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractEDepositRegisterIterator{contract: _MiddlewareContract.contract, event: "eDepositRegister", logs: logs, sub: sub}, nil
}

// WatchEDepositRegister is a free log subscription operation binding the contract event 0x751175c6d256080f1dc18961160a34eaea9ed4a1cdfb588965c1e6773f0b1b5d.
//
// Solidity: event eDepositRegister(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s, address ecdsaAddress)
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

// ParseEDepositRegister is a log parse operation binding the contract event 0x751175c6d256080f1dc18961160a34eaea9ed4a1cdfb588965c1e6773f0b1b5d.
//
// Solidity: event eDepositRegister(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s, address ecdsaAddress)
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
	FromX        *big.Int
	FromY        *big.Int
	ToX          *big.Int
	ToY          *big.Int
	Amount       *big.Int
	R8x          *big.Int
	R8y          *big.Int
	S            *big.Int
	EcdsaAddress common.Address
	Raw          types.Log // Blockchain specific contextual infos
}

// FilterETransfer is a free log retrieval operation binding the contract event 0x5e79ad63e9e97283e51f080decc9f9596a07fd0a490fd1ae5bbdba9637618c09.
//
// Solidity: event eTransfer(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s, address ecdsaAddress)
func (_MiddlewareContract *MiddlewareContractFilterer) FilterETransfer(opts *bind.FilterOpts) (*MiddlewareContractETransferIterator, error) {

	logs, sub, err := _MiddlewareContract.contract.FilterLogs(opts, "eTransfer")
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractETransferIterator{contract: _MiddlewareContract.contract, event: "eTransfer", logs: logs, sub: sub}, nil
}

// WatchETransfer is a free log subscription operation binding the contract event 0x5e79ad63e9e97283e51f080decc9f9596a07fd0a490fd1ae5bbdba9637618c09.
//
// Solidity: event eTransfer(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s, address ecdsaAddress)
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

// ParseETransfer is a log parse operation binding the contract event 0x5e79ad63e9e97283e51f080decc9f9596a07fd0a490fd1ae5bbdba9637618c09.
//
// Solidity: event eTransfer(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s, address ecdsaAddress)
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
	FromX        *big.Int
	FromY        *big.Int
	ToX          *big.Int
	ToY          *big.Int
	Amount       *big.Int
	R8x          *big.Int
	R8y          *big.Int
	S            *big.Int
	EcdsaAddress common.Address
	Raw          types.Log // Blockchain specific contextual infos
}

// FilterEWithdraw is a free log retrieval operation binding the contract event 0x585fdad1bf3a83dd57e4e7e3fa8b91b9b2a9a2b243fa4f5874b0a2fb88fd7115.
//
// Solidity: event eWithdraw(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s, address ecdsaAddress)
func (_MiddlewareContract *MiddlewareContractFilterer) FilterEWithdraw(opts *bind.FilterOpts) (*MiddlewareContractEWithdrawIterator, error) {

	logs, sub, err := _MiddlewareContract.contract.FilterLogs(opts, "eWithdraw")
	if err != nil {
		return nil, err
	}
	return &MiddlewareContractEWithdrawIterator{contract: _MiddlewareContract.contract, event: "eWithdraw", logs: logs, sub: sub}, nil
}

// WatchEWithdraw is a free log subscription operation binding the contract event 0x585fdad1bf3a83dd57e4e7e3fa8b91b9b2a9a2b243fa4f5874b0a2fb88fd7115.
//
// Solidity: event eWithdraw(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s, address ecdsaAddress)
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

// ParseEWithdraw is a log parse operation binding the contract event 0x585fdad1bf3a83dd57e4e7e3fa8b91b9b2a9a2b243fa4f5874b0a2fb88fd7115.
//
// Solidity: event eWithdraw(uint256 fromX, uint256 fromY, uint256 toX, uint256 toY, uint256 amount, uint256 r8x, uint256 r8y, uint256 s, address ecdsaAddress)
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
