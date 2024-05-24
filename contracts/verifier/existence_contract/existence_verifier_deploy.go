// Code generated - DO NOT EDIT.
// This file is a generated binding and any manual changes will be lost.

package existence_contract

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

// ExistenceContractMetaData contains all meta data concerning the ExistenceContract contract.
var ExistenceContractMetaData = &bind.MetaData{
	ABI: "[{\"inputs\":[{\"internalType\":\"uint256[2]\",\"name\":\"_pA\",\"type\":\"uint256[2]\"},{\"internalType\":\"uint256[2][2]\",\"name\":\"_pB\",\"type\":\"uint256[2][2]\"},{\"internalType\":\"uint256[2]\",\"name\":\"_pC\",\"type\":\"uint256[2]\"},{\"internalType\":\"uint256[6]\",\"name\":\"_pubSignals\",\"type\":\"uint256[6]\"}],\"name\":\"verifyProof\",\"outputs\":[{\"internalType\":\"bool\",\"name\":\"\",\"type\":\"bool\"}],\"stateMutability\":\"view\",\"type\":\"function\"}]",
	Bin: "0x6080604052348015600e575f80fd5b506107c18061001c5f395ff3fe608060405234801561000f575f80fd5b5060043610610029575f3560e01c8063f398789b1461002d575b5f80fd5b610047600480360381019061004291906106f2565b61005d565b6040516100549190610772565b60405180910390f35b5f61060d565b7f30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd478110610092575f805260205ff35b50565b5f60405183815284602082015285604082015260408160608360076107d05a03fa9150816100c5575f805260205ff35b825160408201526020830151606082015260408360808360066107d05a03fa9150816100f3575f805260205ff35b505050505050565b5f608086015f87017f25e68ecc5484af3a4ff26ba4eb4e17b928d67be1cfebc1c0df47dfc18783b99b81527f2686421a0b515c3da1195187a77d14485920aae70d55072f466d1e451259c981602082015261019b5f8801357f1e7071449a86d432f4eb1c08ad2d3e9c6487f414616cba055fda0b1a3ba597c27f2d5f766293252f4b238001a8b015bbbfbc89f81f126ba3270456f11ec66f5d9784610095565b6101eb60208801357f2657449129c7193174ae5e63a7cc60829a1a7e323f6cbe202f6a5d09fb6d97077f0c84d2c14a6df5554903a3ab9b15b0c399094d9ca2574c1ec5d612061b8d99fe84610095565b61023b60408801357f28a7a487a5224d3e639e85dea419ec8af6afda2753358109b6902269e42aaca67f0904e4a5e3c321074121e15ef8131329e7220adc72c02ff8c2b335a5021c904084610095565b61028b60608801357f11c567e2ba7b4028faa875010800ee7f4949c0d89414a804bcdc9b289aed33ac7f177aaf447b2d8917387339cd40da06443c98a41ff00dfe7cbe654fbf2d1c935784610095565b6102db60808801357f1d066a396f773c9743ed9dff138c9f9f6297ab94dfc42d7f41aa23bf64bd276b7f18b415f63fb4e3859285002fefc45d3bd0f40f435a6f979911671171fa8c5bfc84610095565b61032b60a08801357f27b1194c3ce0ff39ac5af8d2aacd1e9434220c320f4a603d688dd698bb2b98347f21d5a90cfc23d28e43c9a6ba68cb1dbb5d02b959a9e7f8c57f83aa174fcc0e7984610095565b833582527f30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd4760208501357f30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd4703066020830152843560408301526020850135606083015260408501356080830152606085013560a08301527f2ab9bc1e774e28ffe89864558b74305dd1a127ecc2c2107af49772ffaa82e44c60c08301527f08a3be047c69c285791c435d837577ef6afd9a5b28463f6165a8926997176aa260e08301527f2ca2f0203a01bb295a217f80740b8860cec1b41fd52eef6778182fcac1c25dae6101008301527f1ee0902fbd7d27d3bb8f3c338895cf49d66c4ace02fbf401f3379eaf83c12c106101208301527f052edc8a39e491253b645c3f90b6c68a693cb110ac1d04a6932d2295d2c9d3ef6101408301527f237909fa58259a7d14b1f842d8a02c6029c357062ac6e805ded53ea001c3a1b96101608301525f88015161018083015260205f018801516101a08301527f198e9393920d483a7260bfb731fb5d25f1aa493335a9e71297e485b7aef312c26101c08301527f1800deef121f1e76426a00665e5c4479674322d4f75edadd46debd5cd992f6ed6101e08301527f090689d0585ff075ec9e99ad690c3395bc4b313370b38ef355acdadcd122975b6102008301527f12c85ea5db8c6deb4aab71808dcb408fe3d1e7690c43d37b4ce6cc0166fa7daa610220830152853561024083015260208601356102608301527f2127fbc8a657e372fcdab6db1655119888e95296c318a433c00a6bae6adff1b76102808301527f128e68bd62d03dc78d01f704d7ae3b4f56f19caeaf486813eaf449e9935cad3c6102a08301527f08f4916909af93ff892cdf42d93b86604b22f9a56c21c520f96d990e98b942fe6102c08301527f12b19acbf516778c07c0f87544b5b5fca682a3b5600906581a12277f37e99e3a6102e08301526020826103008460086107d05a03fa82518116935050505095945050505050565b60405161038081016040526106245f840135610063565b6106316020840135610063565b61063e6040840135610063565b61064b6060840135610063565b6106586080840135610063565b61066560a0840135610063565b61067260c0840135610063565b61067f818486888a6100fb565b805f5260205ff35b5f80fd5b5f80fd5b5f819050826020600202820111156106aa576106a961068b565b5b92915050565b5f819050826040600202820111156106cb576106ca61068b565b5b92915050565b5f819050826020600602820111156106ec576106eb61068b565b5b92915050565b5f805f806101c0858703121561070b5761070a610687565b5b5f6107188782880161068f565b9450506040610729878288016106b0565b93505060c061073a8782880161068f565b92505061010061074c878288016106d1565b91505092959194509250565b5f8115159050919050565b61076c81610758565b82525050565b5f6020820190506107855f830184610763565b9291505056fea2646970667358221220de45c3f29b68c678968df857d0e19e27ca79633422bace448b348c2bac9476f864736f6c63430008190033",
}

// ExistenceContractABI is the input ABI used to generate the binding from.
// Deprecated: Use ExistenceContractMetaData.ABI instead.
var ExistenceContractABI = ExistenceContractMetaData.ABI

// ExistenceContractBin is the compiled bytecode used for deploying new contracts.
// Deprecated: Use ExistenceContractMetaData.Bin instead.
var ExistenceContractBin = ExistenceContractMetaData.Bin

// DeployExistenceContract deploys a new Ethereum contract, binding an instance of ExistenceContract to it.
func DeployExistenceContract(auth *bind.TransactOpts, backend bind.ContractBackend) (common.Address, *types.Transaction, *ExistenceContract, error) {
	parsed, err := ExistenceContractMetaData.GetAbi()
	if err != nil {
		return common.Address{}, nil, nil, err
	}
	if parsed == nil {
		return common.Address{}, nil, nil, errors.New("GetABI returned nil")
	}

	address, tx, contract, err := bind.DeployContract(auth, *parsed, common.FromHex(ExistenceContractBin), backend)
	if err != nil {
		return common.Address{}, nil, nil, err
	}
	return address, tx, &ExistenceContract{ExistenceContractCaller: ExistenceContractCaller{contract: contract}, ExistenceContractTransactor: ExistenceContractTransactor{contract: contract}, ExistenceContractFilterer: ExistenceContractFilterer{contract: contract}}, nil
}

// ExistenceContract is an auto generated Go binding around an Ethereum contract.
type ExistenceContract struct {
	ExistenceContractCaller     // Read-only binding to the contract
	ExistenceContractTransactor // Write-only binding to the contract
	ExistenceContractFilterer   // Log filterer for contract events
}

// ExistenceContractCaller is an auto generated read-only Go binding around an Ethereum contract.
type ExistenceContractCaller struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// ExistenceContractTransactor is an auto generated write-only Go binding around an Ethereum contract.
type ExistenceContractTransactor struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// ExistenceContractFilterer is an auto generated log filtering Go binding around an Ethereum contract events.
type ExistenceContractFilterer struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// ExistenceContractSession is an auto generated Go binding around an Ethereum contract,
// with pre-set call and transact options.
type ExistenceContractSession struct {
	Contract     *ExistenceContract // Generic contract binding to set the session for
	CallOpts     bind.CallOpts      // Call options to use throughout this session
	TransactOpts bind.TransactOpts  // Transaction auth options to use throughout this session
}

// ExistenceContractCallerSession is an auto generated read-only Go binding around an Ethereum contract,
// with pre-set call options.
type ExistenceContractCallerSession struct {
	Contract *ExistenceContractCaller // Generic contract caller binding to set the session for
	CallOpts bind.CallOpts            // Call options to use throughout this session
}

// ExistenceContractTransactorSession is an auto generated write-only Go binding around an Ethereum contract,
// with pre-set transact options.
type ExistenceContractTransactorSession struct {
	Contract     *ExistenceContractTransactor // Generic contract transactor binding to set the session for
	TransactOpts bind.TransactOpts            // Transaction auth options to use throughout this session
}

// ExistenceContractRaw is an auto generated low-level Go binding around an Ethereum contract.
type ExistenceContractRaw struct {
	Contract *ExistenceContract // Generic contract binding to access the raw methods on
}

// ExistenceContractCallerRaw is an auto generated low-level read-only Go binding around an Ethereum contract.
type ExistenceContractCallerRaw struct {
	Contract *ExistenceContractCaller // Generic read-only contract binding to access the raw methods on
}

// ExistenceContractTransactorRaw is an auto generated low-level write-only Go binding around an Ethereum contract.
type ExistenceContractTransactorRaw struct {
	Contract *ExistenceContractTransactor // Generic write-only contract binding to access the raw methods on
}

// NewExistenceContract creates a new instance of ExistenceContract, bound to a specific deployed contract.
func NewExistenceContract(address common.Address, backend bind.ContractBackend) (*ExistenceContract, error) {
	contract, err := bindExistenceContract(address, backend, backend, backend)
	if err != nil {
		return nil, err
	}
	return &ExistenceContract{ExistenceContractCaller: ExistenceContractCaller{contract: contract}, ExistenceContractTransactor: ExistenceContractTransactor{contract: contract}, ExistenceContractFilterer: ExistenceContractFilterer{contract: contract}}, nil
}

// NewExistenceContractCaller creates a new read-only instance of ExistenceContract, bound to a specific deployed contract.
func NewExistenceContractCaller(address common.Address, caller bind.ContractCaller) (*ExistenceContractCaller, error) {
	contract, err := bindExistenceContract(address, caller, nil, nil)
	if err != nil {
		return nil, err
	}
	return &ExistenceContractCaller{contract: contract}, nil
}

// NewExistenceContractTransactor creates a new write-only instance of ExistenceContract, bound to a specific deployed contract.
func NewExistenceContractTransactor(address common.Address, transactor bind.ContractTransactor) (*ExistenceContractTransactor, error) {
	contract, err := bindExistenceContract(address, nil, transactor, nil)
	if err != nil {
		return nil, err
	}
	return &ExistenceContractTransactor{contract: contract}, nil
}

// NewExistenceContractFilterer creates a new log filterer instance of ExistenceContract, bound to a specific deployed contract.
func NewExistenceContractFilterer(address common.Address, filterer bind.ContractFilterer) (*ExistenceContractFilterer, error) {
	contract, err := bindExistenceContract(address, nil, nil, filterer)
	if err != nil {
		return nil, err
	}
	return &ExistenceContractFilterer{contract: contract}, nil
}

// bindExistenceContract binds a generic wrapper to an already deployed contract.
func bindExistenceContract(address common.Address, caller bind.ContractCaller, transactor bind.ContractTransactor, filterer bind.ContractFilterer) (*bind.BoundContract, error) {
	parsed, err := ExistenceContractMetaData.GetAbi()
	if err != nil {
		return nil, err
	}
	return bind.NewBoundContract(address, *parsed, caller, transactor, filterer), nil
}

// Call invokes the (constant) contract method with params as input values and
// sets the output to result. The result type might be a single field for simple
// returns, a slice of interfaces for anonymous returns and a struct for named
// returns.
func (_ExistenceContract *ExistenceContractRaw) Call(opts *bind.CallOpts, result *[]interface{}, method string, params ...interface{}) error {
	return _ExistenceContract.Contract.ExistenceContractCaller.contract.Call(opts, result, method, params...)
}

// Transfer initiates a plain transaction to move funds to the contract, calling
// its default method if one is available.
func (_ExistenceContract *ExistenceContractRaw) Transfer(opts *bind.TransactOpts) (*types.Transaction, error) {
	return _ExistenceContract.Contract.ExistenceContractTransactor.contract.Transfer(opts)
}

// Transact invokes the (paid) contract method with params as input values.
func (_ExistenceContract *ExistenceContractRaw) Transact(opts *bind.TransactOpts, method string, params ...interface{}) (*types.Transaction, error) {
	return _ExistenceContract.Contract.ExistenceContractTransactor.contract.Transact(opts, method, params...)
}

// Call invokes the (constant) contract method with params as input values and
// sets the output to result. The result type might be a single field for simple
// returns, a slice of interfaces for anonymous returns and a struct for named
// returns.
func (_ExistenceContract *ExistenceContractCallerRaw) Call(opts *bind.CallOpts, result *[]interface{}, method string, params ...interface{}) error {
	return _ExistenceContract.Contract.contract.Call(opts, result, method, params...)
}

// Transfer initiates a plain transaction to move funds to the contract, calling
// its default method if one is available.
func (_ExistenceContract *ExistenceContractTransactorRaw) Transfer(opts *bind.TransactOpts) (*types.Transaction, error) {
	return _ExistenceContract.Contract.contract.Transfer(opts)
}

// Transact invokes the (paid) contract method with params as input values.
func (_ExistenceContract *ExistenceContractTransactorRaw) Transact(opts *bind.TransactOpts, method string, params ...interface{}) (*types.Transaction, error) {
	return _ExistenceContract.Contract.contract.Transact(opts, method, params...)
}

// VerifyProof is a free data retrieval call binding the contract method 0xf398789b.
//
// Solidity: function verifyProof(uint256[2] _pA, uint256[2][2] _pB, uint256[2] _pC, uint256[6] _pubSignals) view returns(bool)
func (_ExistenceContract *ExistenceContractCaller) VerifyProof(opts *bind.CallOpts, _pA [2]*big.Int, _pB [2][2]*big.Int, _pC [2]*big.Int, _pubSignals [6]*big.Int) (bool, error) {
	var out []interface{}
	err := _ExistenceContract.contract.Call(opts, &out, "verifyProof", _pA, _pB, _pC, _pubSignals)

	if err != nil {
		return *new(bool), err
	}

	out0 := *abi.ConvertType(out[0], new(bool)).(*bool)

	return out0, err

}

// VerifyProof is a free data retrieval call binding the contract method 0xf398789b.
//
// Solidity: function verifyProof(uint256[2] _pA, uint256[2][2] _pB, uint256[2] _pC, uint256[6] _pubSignals) view returns(bool)
func (_ExistenceContract *ExistenceContractSession) VerifyProof(_pA [2]*big.Int, _pB [2][2]*big.Int, _pC [2]*big.Int, _pubSignals [6]*big.Int) (bool, error) {
	return _ExistenceContract.Contract.VerifyProof(&_ExistenceContract.CallOpts, _pA, _pB, _pC, _pubSignals)
}

// VerifyProof is a free data retrieval call binding the contract method 0xf398789b.
//
// Solidity: function verifyProof(uint256[2] _pA, uint256[2][2] _pB, uint256[2] _pC, uint256[6] _pubSignals) view returns(bool)
func (_ExistenceContract *ExistenceContractCallerSession) VerifyProof(_pA [2]*big.Int, _pB [2][2]*big.Int, _pC [2]*big.Int, _pubSignals [6]*big.Int) (bool, error) {
	return _ExistenceContract.Contract.VerifyProof(&_ExistenceContract.CallOpts, _pA, _pB, _pC, _pubSignals)
}
