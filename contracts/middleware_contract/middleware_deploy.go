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
	ABI: "[{\"inputs\":[{\"internalType\":\"address\",\"name\":\"_mimcContractAddress\",\"type\":\"address\"},{\"internalType\":\"uint256\",\"name\":\"initializationAccountRoot\",\"type\":\"uint256\"}],\"stateMutability\":\"nonpayable\",\"type\":\"constructor\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"bool\",\"name\":\"state\",\"type\":\"bool\"}],\"name\":\"dDebug\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"address\",\"name\":\"addr\",\"type\":\"address\"}],\"name\":\"dGetAddress\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"bool\",\"name\":\"b\",\"type\":\"bool\"}],\"name\":\"dGetBool\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"bytes20\",\"name\":\"addr\",\"type\":\"bytes20\"}],\"name\":\"dGetBytes20\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"string\",\"name\":\"str\",\"type\":\"string\"}],\"name\":\"dGetString\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"u\",\"type\":\"uint256\"}],\"name\":\"dGetUint\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"value\",\"type\":\"uint256\"}],\"name\":\"dGetUint256\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"uint256[]\",\"name\":\"arr\",\"type\":\"uint256[]\"}],\"name\":\"dGetUint256Array\",\"type\":\"event\"},{\"anonymous\":false,\"inputs\":[{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"fromX\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"fromY\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"toX\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"toY\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"r8x\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"r8y\",\"type\":\"uint256\"},{\"indexed\":false,\"internalType\":\"uint256\",\"name\":\"s\",\"type\":\"uint256\"}],\"name\":\"eDepositRegister\",\"type\":\"event\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"fromX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"fromY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8x\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8y\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"s\",\"type\":\"uint256\"}],\"name\":\"_depositExistence\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"fromX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"fromY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8x\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8y\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"s\",\"type\":\"uint256\"}],\"name\":\"_depositRegister\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[],\"name\":\"debugCalled\",\"outputs\":[],\"stateMutability\":\"nonpayable\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256\",\"name\":\"fromX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"fromY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toX\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"toY\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"amount\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8x\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"r8y\",\"type\":\"uint256\"},{\"internalType\":\"uint256\",\"name\":\"s\",\"type\":\"uint256\"}],\"name\":\"deposit\",\"outputs\":[],\"stateMutability\":\"payable\",\"type\":\"function\"},{\"inputs\":[],\"name\":\"mimc\",\"outputs\":[{\"internalType\":\"contractIMiMC\",\"name\":\"\",\"type\":\"address\"}],\"stateMutability\":\"view\",\"type\":\"function\"},{\"inputs\":[{\"internalType\":\"uint256[]\",\"name\":\"arr\",\"type\":\"uint256[]\"}],\"name\":\"mimcMultiHash\",\"outputs\":[{\"internalType\":\"uint256\",\"name\":\"\",\"type\":\"uint256\"}],\"stateMutability\":\"view\",\"type\":\"function\"}]",
	Bin: "0x60806040527f30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f00000015f5560405180608001604052807f0b077ec0500876486f9b8860e222cee2a5fc339da0c9b953ce54cb6b7a21c43181526020017f2d3ec69fee53ea98bd7c586d2aa549805fe2c51423846834fc028aeb89c5dc2e81526020017f11dfa7319c596f65f19a20f2f8aec51c64d8d6eee2de849e4e8fd005510294c081526020017f21a86a490fe7406343ca077b0523e23180884d29110fc0c92e1ca09c63581e1f8152506001906004620000da929190620001f9565b50348015620000e7575f80fd5b50604051620011ca380380620011ca83398181016040528101906200010d9190620002f8565b8160085f6101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff1602179055505f600b819055503360075f6101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550600681908060018154018082558091505060019003905f5260205f20015f90919091909150557f766ba33eed9390bf74894ab64d15834eddb4095e00203e303f9377052e41bb69604051620001e9906200039b565b60405180910390a15050620003bb565b82600481019282156200022b579160200282015b828111156200022a5782518255916020019190600101906200020d565b5b5090506200023a91906200023e565b5090565b5b8082111562000257575f815f9055506001016200023f565b5090565b5f80fd5b5f73ffffffffffffffffffffffffffffffffffffffff82169050919050565b5f6200028a826200025f565b9050919050565b6200029c816200027e565b8114620002a7575f80fd5b50565b5f81519050620002ba8162000291565b92915050565b5f819050919050565b620002d481620002c0565b8114620002df575f80fd5b50565b5f81519050620002f281620002c9565b92915050565b5f80604083850312156200031157620003106200025b565b5b5f6200032085828601620002aa565b92505060206200033385828601620002e2565b9150509250929050565b5f82825260208201905092915050565b7f4d6964646c6577617265206973206465706c6f796564000000000000000000005f82015250565b5f620003836016836200033d565b915062000390826200034d565b602082019050919050565b5f6020820190508181035f830152620003b48162000375565b9050919050565b610e0180620003c95f395ff3fe608060405260043610610054575f3560e01c80630dbdbef0146100585780631c5237d11461006e57806376385cc314610096578063be722daf146100c0578063ed3d67dd146100fc578063ffe41ea414610124575b5f80fd5b348015610063575f80fd5b5061006c610140565b005b348015610079575f80fd5b50610094600480360381019061008f919061070f565b610177565b005b3480156100a1575f80fd5b506100aa610412565b6040516100b7919061083a565b60405180910390f35b3480156100cb575f80fd5b506100e660048036038101906100e191906109a3565b610437565b6040516100f391906109f9565b60405180910390f35b348015610107575f80fd5b50610122600480360381019061011d919061070f565b610584565b005b61013e6004803603810190610139919061070f565b6105c3565b005b7f766ba33eed9390bf74894ab64d15834eddb4095e00203e303f9377052e41bb6960405161016d90610a92565b60405180910390a1565b7f766ba33eed9390bf74894ab64d15834eddb4095e00203e303f9377052e41bb696040516101a490610afa565b60405180910390a16001600b5f8282546101be9190610b45565b925050819055505f600467ffffffffffffffff8111156101e1576101e0610867565b5b60405190808252806020026020018201604052801561020f5781602001602082028036833780820191505090505b50905086815f8151811061022657610225610b78565b5b602002602001018181525050858160018151811061024757610246610b78565b5b602002602001018181525050848160028151811061026857610267610b78565b5b6020026020010181815250505f8160038151811061028957610288610b78565b5b6020026020010181815250505f61029f82610437565b90505f600667ffffffffffffffff8111156102bd576102bc610867565b5b6040519080825280602002602001820160405280156102eb5781602001602082028036833780820191505090505b5090508a815f8151811061030257610301610b78565b5b602002602001018181525050898160018151811061032357610322610b78565b5b602002602001018181525050888160028151811061034457610343610b78565b5b602002602001018181525050878160038151811061036557610364610b78565b5b6020026020010181815250505f8160048151811061038657610385610b78565b5b60200260200101818152505086816005815181106103a7576103a6610b78565b5b6020026020010181815250505f6103bd82610437565b90507f1d0df93e9d41caa013439fb3104924ce014d7f34ce7aa77377f4dcac09c4e7c88c8c8c8c8c8c8c8c6040516103fc989796959493929190610ba5565b60405180910390a1505050505050505050505050565b60085f9054906101000a900473ffffffffffffffffffffffffffffffffffffffff1681565b5f805f90505f5b83518160ff16101561057a575f545f54858360ff168151811061046457610463610b78565b5b60200260200101516104769190610c4e565b5f5460085f9054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1663d15ca1095f54898760ff16815181106104cd576104cc610b78565b5b60200260200101516104df9190610c4e565b876040518363ffffffff1660e01b81526004016104fd929190610c7e565b602060405180830381865afa158015610518573d5f803e3d5ffd5b505050506040513d601f19601f8201168201806040525081019061053c9190610cb9565b856105479190610b45565b6105519190610c4e565b61055b9190610b45565b6105659190610c4e565b9150808061057290610cf0565b91505061043e565b5080915050919050565b7f766ba33eed9390bf74894ab64d15834eddb4095e00203e303f9377052e41bb696040516105b190610d62565b60405180910390a15050505050505050565b5f606087876040516020016105d9929190610da0565b60405160208183030381529060405280519060200120901b60601c905060055f8273ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f9054906101000a900460ff161561065a576106558989898989898989610584565b6106c0565b600160055f8373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020015f205f6101000a81548160ff0219169083151502179055506106bf8989898989898989610177565b5b505050505050505050565b5f604051905090565b5f80fd5b5f80fd5b5f819050919050565b6106ee816106dc565b81146106f8575f80fd5b50565b5f81359050610709816106e5565b92915050565b5f805f805f805f80610100898b03121561072c5761072b6106d4565b5b5f6107398b828c016106fb565b985050602061074a8b828c016106fb565b975050604061075b8b828c016106fb565b965050606061076c8b828c016106fb565b955050608061077d8b828c016106fb565b94505060a061078e8b828c016106fb565b93505060c061079f8b828c016106fb565b92505060e06107b08b828c016106fb565b9150509295985092959890939650565b5f73ffffffffffffffffffffffffffffffffffffffff82169050919050565b5f819050919050565b5f6108026107fd6107f8846107c0565b6107df565b6107c0565b9050919050565b5f610813826107e8565b9050919050565b5f61082482610809565b9050919050565b6108348161081a565b82525050565b5f60208201905061084d5f83018461082b565b92915050565b5f80fd5b5f601f19601f8301169050919050565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52604160045260245ffd5b61089d82610857565b810181811067ffffffffffffffff821117156108bc576108bb610867565b5b80604052505050565b5f6108ce6106cb565b90506108da8282610894565b919050565b5f67ffffffffffffffff8211156108f9576108f8610867565b5b602082029050602081019050919050565b5f80fd5b5f61092061091b846108df565b6108c5565b905080838252602082019050602084028301858111156109435761094261090a565b5b835b8181101561096c578061095888826106fb565b845260208401935050602081019050610945565b5050509392505050565b5f82601f83011261098a57610989610853565b5b813561099a84826020860161090e565b91505092915050565b5f602082840312156109b8576109b76106d4565b5b5f82013567ffffffffffffffff8111156109d5576109d46106d8565b5b6109e184828501610976565b91505092915050565b6109f3816106dc565b82525050565b5f602082019050610a0c5f8301846109ea565b92915050565b5f82825260208201905092915050565b7f4d6964646c6577617265206973206465706c6f7965642c20616c736f2c2064655f8201527f6275672069732063616c6c65643a200000000000000000000000000000000000602082015250565b5f610a7c602f83610a12565b9150610a8782610a22565b604082019050919050565b5f6020820190508181035f830152610aa981610a70565b9050919050565b7f6465706f736974526567697374657220697320747269676765726564210000005f82015250565b5f610ae4601d83610a12565b9150610aef82610ab0565b602082019050919050565b5f6020820190508181035f830152610b1181610ad8565b9050919050565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52601160045260245ffd5b5f610b4f826106dc565b9150610b5a836106dc565b9250828201905080821115610b7257610b71610b18565b5b92915050565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52603260045260245ffd5b5f61010082019050610bb95f83018b6109ea565b610bc6602083018a6109ea565b610bd360408301896109ea565b610be060608301886109ea565b610bed60808301876109ea565b610bfa60a08301866109ea565b610c0760c08301856109ea565b610c1460e08301846109ea565b9998505050505050505050565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52601260045260245ffd5b5f610c58826106dc565b9150610c63836106dc565b925082610c7357610c72610c21565b5b828206905092915050565b5f604082019050610c915f8301856109ea565b610c9e60208301846109ea565b9392505050565b5f81519050610cb3816106e5565b92915050565b5f60208284031215610cce57610ccd6106d4565b5b5f610cdb84828501610ca5565b91505092915050565b5f60ff82169050919050565b5f610cfa82610ce4565b915060ff8203610d0d57610d0c610b18565b5b600182019050919050565b7f6465706f7369744578697374656e6365206973207472696767657265642100005f82015250565b5f610d4c601e83610a12565b9150610d5782610d18565b602082019050919050565b5f6020820190508181035f830152610d7981610d40565b9050919050565b5f819050919050565b610d9a610d95826106dc565b610d80565b82525050565b5f610dab8285610d89565b602082019150610dbb8284610d89565b602082019150819050939250505056fea264697066735822122055de81bdcc963a55ee49cf7e36c31a0b02a5c432a2d337a9f2bff120e9ed38de64736f6c63430008170033",
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

// DebugCalled is a paid mutator transaction binding the contract method 0x0dbdbef0.
//
// Solidity: function debugCalled() returns()
func (_MiddlewareContract *MiddlewareContractTransactor) DebugCalled(opts *bind.TransactOpts) (*types.Transaction, error) {
	return _MiddlewareContract.contract.Transact(opts, "debugCalled")
}

// DebugCalled is a paid mutator transaction binding the contract method 0x0dbdbef0.
//
// Solidity: function debugCalled() returns()
func (_MiddlewareContract *MiddlewareContractSession) DebugCalled() (*types.Transaction, error) {
	return _MiddlewareContract.Contract.DebugCalled(&_MiddlewareContract.TransactOpts)
}

// DebugCalled is a paid mutator transaction binding the contract method 0x0dbdbef0.
//
// Solidity: function debugCalled() returns()
func (_MiddlewareContract *MiddlewareContractTransactorSession) DebugCalled() (*types.Transaction, error) {
	return _MiddlewareContract.Contract.DebugCalled(&_MiddlewareContract.TransactOpts)
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
