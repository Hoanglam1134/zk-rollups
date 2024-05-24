// Code generated - DO NOT EDIT.
// This file is a generated binding and any manual changes will be lost.

package register_contract

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

// RegisterContractMetaData contains all meta data concerning the RegisterContract contract.
var RegisterContractMetaData = &bind.MetaData{
	ABI: "[{\"inputs\":[{\"internalType\":\"uint256[2]\",\"name\":\"_pA\",\"type\":\"uint256[2]\"},{\"internalType\":\"uint256[2][2]\",\"name\":\"_pB\",\"type\":\"uint256[2][2]\"},{\"internalType\":\"uint256[2]\",\"name\":\"_pC\",\"type\":\"uint256[2]\"},{\"internalType\":\"uint256[4]\",\"name\":\"_pubSignals\",\"type\":\"uint256[4]\"}],\"name\":\"verifyProof\",\"outputs\":[{\"internalType\":\"bool\",\"name\":\"\",\"type\":\"bool\"}],\"stateMutability\":\"view\",\"type\":\"function\"}]",
	Bin: "0x6080604052348015600e575f80fd5b506107078061001c5f395ff3fe608060405234801561000f575f80fd5b5060043610610029575f3560e01c80635fe8c13b1461002d575b5f80fd5b61004760048036038101906100429190610638565b61005d565b60405161005491906106b8565b60405180910390f35b5f61056d565b7f30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd478110610092575f805260205ff35b50565b5f60405183815284602082015285604082015260408160608360076107d05a03fa9150816100c5575f805260205ff35b825160408201526020830151606082015260408360808360066107d05a03fa9150816100f3575f805260205ff35b505050505050565b5f608086015f87017f2d89947c58935b17a8beed372a8d4eea15ca2dd45bb4c409cc0ce7fcb37faaf081527f26471aa5ab0963dfd4ed5fc495fb066584aa230b98e7ec69d928197f7577b979602082015261019b5f8801357f25f91c3e58fb049969462638418d52d1d733f1c986a29f4785790fbbbf5406b77f0a10ade4a5d184e01bb5b406f1f3d46a8be16afa949396d2174292678265e2d684610095565b6101eb60208801357f2783c0e1fb3095fdb449f0ad521aad6f10b1c45533b5ba81b3d2bb0f8c3656ed7f1df54b36cc01853aebd2747f6d5e92bbdfa8c6129cc38e4f56bcad6caf75155184610095565b61023b60408801357f1bcde3202d6f9281556264b02e328ed710cd1a9808e3e20e334bdea8ab2bf9557f15053bbfd1181b248e65a4a03c93bc15e1c3e5054d32dfd73e636ccd985dc75e84610095565b61028b60608801357f12f315aef8d1df08ad56bbeb9da9c3cc084173808b5aa62c9352ada3eb63ee867f289850c2d26e45cdfe841bac68ca40f2a7e63b7bdd66ba3c151bd1418b5d910284610095565b833582527f30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd4760208501357f30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd4703066020830152843560408301526020850135606083015260408501356080830152606085013560a08301527f2ab9bc1e774e28ffe89864558b74305dd1a127ecc2c2107af49772ffaa82e44c60c08301527f08a3be047c69c285791c435d837577ef6afd9a5b28463f6165a8926997176aa260e08301527f2ca2f0203a01bb295a217f80740b8860cec1b41fd52eef6778182fcac1c25dae6101008301527f1ee0902fbd7d27d3bb8f3c338895cf49d66c4ace02fbf401f3379eaf83c12c106101208301527f052edc8a39e491253b645c3f90b6c68a693cb110ac1d04a6932d2295d2c9d3ef6101408301527f237909fa58259a7d14b1f842d8a02c6029c357062ac6e805ded53ea001c3a1b96101608301525f88015161018083015260205f018801516101a08301527f198e9393920d483a7260bfb731fb5d25f1aa493335a9e71297e485b7aef312c26101c08301527f1800deef121f1e76426a00665e5c4479674322d4f75edadd46debd5cd992f6ed6101e08301527f090689d0585ff075ec9e99ad690c3395bc4b313370b38ef355acdadcd122975b6102008301527f12c85ea5db8c6deb4aab71808dcb408fe3d1e7690c43d37b4ce6cc0166fa7daa610220830152853561024083015260208601356102608301527f2b01d90b114ff128d586980c1bc43479b8e96181ef378561d1b8cad65cd5b3d66102808301527f0d8d78bb9e20cda02ebb3fa934efe58ded375635dda62b50aa9bf6c0f118a2376102a08301527f2f74e1623c1c13c0f760e3634507df6d2a1374eba945c944c6bfc45ce53a82096102c08301527f10c2821af2b86abbc361b9227334861c4496f263648af024f1d638ac98ac25796102e08301526020826103008460086107d05a03fa82518116935050505095945050505050565b60405161038081016040526105845f840135610063565b6105916020840135610063565b61059e6040840135610063565b6105ab6060840135610063565b6105b86080840135610063565b6105c5818486888a6100fb565b805f5260205ff35b5f80fd5b5f80fd5b5f819050826020600202820111156105f0576105ef6105d1565b5b92915050565b5f81905082604060020282011115610611576106106105d1565b5b92915050565b5f81905082602060040282011115610632576106316105d1565b5b92915050565b5f805f806101808587031215610651576106506105cd565b5b5f61065e878288016105d5565b945050604061066f878288016105f6565b93505060c0610680878288016105d5565b92505061010061069287828801610617565b91505092959194509250565b5f8115159050919050565b6106b28161069e565b82525050565b5f6020820190506106cb5f8301846106a9565b9291505056fea26469706673582212207a29495d2e617533417b98178c5ca656e336e0f668f90bdebff9c44072499cf664736f6c63430008190033",
}

// RegisterContractABI is the input ABI used to generate the binding from.
// Deprecated: Use RegisterContractMetaData.ABI instead.
var RegisterContractABI = RegisterContractMetaData.ABI

// RegisterContractBin is the compiled bytecode used for deploying new contracts.
// Deprecated: Use RegisterContractMetaData.Bin instead.
var RegisterContractBin = RegisterContractMetaData.Bin

// DeployRegisterContract deploys a new Ethereum contract, binding an instance of RegisterContract to it.
func DeployRegisterContract(auth *bind.TransactOpts, backend bind.ContractBackend) (common.Address, *types.Transaction, *RegisterContract, error) {
	parsed, err := RegisterContractMetaData.GetAbi()
	if err != nil {
		return common.Address{}, nil, nil, err
	}
	if parsed == nil {
		return common.Address{}, nil, nil, errors.New("GetABI returned nil")
	}

	address, tx, contract, err := bind.DeployContract(auth, *parsed, common.FromHex(RegisterContractBin), backend)
	if err != nil {
		return common.Address{}, nil, nil, err
	}
	return address, tx, &RegisterContract{RegisterContractCaller: RegisterContractCaller{contract: contract}, RegisterContractTransactor: RegisterContractTransactor{contract: contract}, RegisterContractFilterer: RegisterContractFilterer{contract: contract}}, nil
}

// RegisterContract is an auto generated Go binding around an Ethereum contract.
type RegisterContract struct {
	RegisterContractCaller     // Read-only binding to the contract
	RegisterContractTransactor // Write-only binding to the contract
	RegisterContractFilterer   // Log filterer for contract events
}

// RegisterContractCaller is an auto generated read-only Go binding around an Ethereum contract.
type RegisterContractCaller struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// RegisterContractTransactor is an auto generated write-only Go binding around an Ethereum contract.
type RegisterContractTransactor struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// RegisterContractFilterer is an auto generated log filtering Go binding around an Ethereum contract events.
type RegisterContractFilterer struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// RegisterContractSession is an auto generated Go binding around an Ethereum contract,
// with pre-set call and transact options.
type RegisterContractSession struct {
	Contract     *RegisterContract // Generic contract binding to set the session for
	CallOpts     bind.CallOpts     // Call options to use throughout this session
	TransactOpts bind.TransactOpts // Transaction auth options to use throughout this session
}

// RegisterContractCallerSession is an auto generated read-only Go binding around an Ethereum contract,
// with pre-set call options.
type RegisterContractCallerSession struct {
	Contract *RegisterContractCaller // Generic contract caller binding to set the session for
	CallOpts bind.CallOpts           // Call options to use throughout this session
}

// RegisterContractTransactorSession is an auto generated write-only Go binding around an Ethereum contract,
// with pre-set transact options.
type RegisterContractTransactorSession struct {
	Contract     *RegisterContractTransactor // Generic contract transactor binding to set the session for
	TransactOpts bind.TransactOpts           // Transaction auth options to use throughout this session
}

// RegisterContractRaw is an auto generated low-level Go binding around an Ethereum contract.
type RegisterContractRaw struct {
	Contract *RegisterContract // Generic contract binding to access the raw methods on
}

// RegisterContractCallerRaw is an auto generated low-level read-only Go binding around an Ethereum contract.
type RegisterContractCallerRaw struct {
	Contract *RegisterContractCaller // Generic read-only contract binding to access the raw methods on
}

// RegisterContractTransactorRaw is an auto generated low-level write-only Go binding around an Ethereum contract.
type RegisterContractTransactorRaw struct {
	Contract *RegisterContractTransactor // Generic write-only contract binding to access the raw methods on
}

// NewRegisterContract creates a new instance of RegisterContract, bound to a specific deployed contract.
func NewRegisterContract(address common.Address, backend bind.ContractBackend) (*RegisterContract, error) {
	contract, err := bindRegisterContract(address, backend, backend, backend)
	if err != nil {
		return nil, err
	}
	return &RegisterContract{RegisterContractCaller: RegisterContractCaller{contract: contract}, RegisterContractTransactor: RegisterContractTransactor{contract: contract}, RegisterContractFilterer: RegisterContractFilterer{contract: contract}}, nil
}

// NewRegisterContractCaller creates a new read-only instance of RegisterContract, bound to a specific deployed contract.
func NewRegisterContractCaller(address common.Address, caller bind.ContractCaller) (*RegisterContractCaller, error) {
	contract, err := bindRegisterContract(address, caller, nil, nil)
	if err != nil {
		return nil, err
	}
	return &RegisterContractCaller{contract: contract}, nil
}

// NewRegisterContractTransactor creates a new write-only instance of RegisterContract, bound to a specific deployed contract.
func NewRegisterContractTransactor(address common.Address, transactor bind.ContractTransactor) (*RegisterContractTransactor, error) {
	contract, err := bindRegisterContract(address, nil, transactor, nil)
	if err != nil {
		return nil, err
	}
	return &RegisterContractTransactor{contract: contract}, nil
}

// NewRegisterContractFilterer creates a new log filterer instance of RegisterContract, bound to a specific deployed contract.
func NewRegisterContractFilterer(address common.Address, filterer bind.ContractFilterer) (*RegisterContractFilterer, error) {
	contract, err := bindRegisterContract(address, nil, nil, filterer)
	if err != nil {
		return nil, err
	}
	return &RegisterContractFilterer{contract: contract}, nil
}

// bindRegisterContract binds a generic wrapper to an already deployed contract.
func bindRegisterContract(address common.Address, caller bind.ContractCaller, transactor bind.ContractTransactor, filterer bind.ContractFilterer) (*bind.BoundContract, error) {
	parsed, err := RegisterContractMetaData.GetAbi()
	if err != nil {
		return nil, err
	}
	return bind.NewBoundContract(address, *parsed, caller, transactor, filterer), nil
}

// Call invokes the (constant) contract method with params as input values and
// sets the output to result. The result type might be a single field for simple
// returns, a slice of interfaces for anonymous returns and a struct for named
// returns.
func (_RegisterContract *RegisterContractRaw) Call(opts *bind.CallOpts, result *[]interface{}, method string, params ...interface{}) error {
	return _RegisterContract.Contract.RegisterContractCaller.contract.Call(opts, result, method, params...)
}

// Transfer initiates a plain transaction to move funds to the contract, calling
// its default method if one is available.
func (_RegisterContract *RegisterContractRaw) Transfer(opts *bind.TransactOpts) (*types.Transaction, error) {
	return _RegisterContract.Contract.RegisterContractTransactor.contract.Transfer(opts)
}

// Transact invokes the (paid) contract method with params as input values.
func (_RegisterContract *RegisterContractRaw) Transact(opts *bind.TransactOpts, method string, params ...interface{}) (*types.Transaction, error) {
	return _RegisterContract.Contract.RegisterContractTransactor.contract.Transact(opts, method, params...)
}

// Call invokes the (constant) contract method with params as input values and
// sets the output to result. The result type might be a single field for simple
// returns, a slice of interfaces for anonymous returns and a struct for named
// returns.
func (_RegisterContract *RegisterContractCallerRaw) Call(opts *bind.CallOpts, result *[]interface{}, method string, params ...interface{}) error {
	return _RegisterContract.Contract.contract.Call(opts, result, method, params...)
}

// Transfer initiates a plain transaction to move funds to the contract, calling
// its default method if one is available.
func (_RegisterContract *RegisterContractTransactorRaw) Transfer(opts *bind.TransactOpts) (*types.Transaction, error) {
	return _RegisterContract.Contract.contract.Transfer(opts)
}

// Transact invokes the (paid) contract method with params as input values.
func (_RegisterContract *RegisterContractTransactorRaw) Transact(opts *bind.TransactOpts, method string, params ...interface{}) (*types.Transaction, error) {
	return _RegisterContract.Contract.contract.Transact(opts, method, params...)
}

// VerifyProof is a free data retrieval call binding the contract method 0x5fe8c13b.
//
// Solidity: function verifyProof(uint256[2] _pA, uint256[2][2] _pB, uint256[2] _pC, uint256[4] _pubSignals) view returns(bool)
func (_RegisterContract *RegisterContractCaller) VerifyProof(opts *bind.CallOpts, _pA [2]*big.Int, _pB [2][2]*big.Int, _pC [2]*big.Int, _pubSignals [4]*big.Int) (bool, error) {
	var out []interface{}
	err := _RegisterContract.contract.Call(opts, &out, "verifyProof", _pA, _pB, _pC, _pubSignals)

	if err != nil {
		return *new(bool), err
	}

	out0 := *abi.ConvertType(out[0], new(bool)).(*bool)

	return out0, err

}

// VerifyProof is a free data retrieval call binding the contract method 0x5fe8c13b.
//
// Solidity: function verifyProof(uint256[2] _pA, uint256[2][2] _pB, uint256[2] _pC, uint256[4] _pubSignals) view returns(bool)
func (_RegisterContract *RegisterContractSession) VerifyProof(_pA [2]*big.Int, _pB [2][2]*big.Int, _pC [2]*big.Int, _pubSignals [4]*big.Int) (bool, error) {
	return _RegisterContract.Contract.VerifyProof(&_RegisterContract.CallOpts, _pA, _pB, _pC, _pubSignals)
}

// VerifyProof is a free data retrieval call binding the contract method 0x5fe8c13b.
//
// Solidity: function verifyProof(uint256[2] _pA, uint256[2][2] _pB, uint256[2] _pC, uint256[4] _pubSignals) view returns(bool)
func (_RegisterContract *RegisterContractCallerSession) VerifyProof(_pA [2]*big.Int, _pB [2][2]*big.Int, _pC [2]*big.Int, _pubSignals [4]*big.Int) (bool, error) {
	return _RegisterContract.Contract.VerifyProof(&_RegisterContract.CallOpts, _pA, _pB, _pC, _pubSignals)
}
