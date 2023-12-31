// Code generated - DO NOT EDIT.
// This file is a generated binding and any manual changes will be lost.

package mimc_contract

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

// MimcContractMetaData contains all meta data concerning the MimcContract contract.
var MimcContractMetaData = &bind.MetaData{
	ABI: "[{\"constant\":true,\"inputs\":[{\"name\":\"in_x\",\"type\":\"uint256\"},{\"name\":\"in_k\",\"type\":\"uint256\"}],\"name\":\"MiMCpe7\",\"outputs\":[{\"name\":\"out_x\",\"type\":\"uint256\"}],\"payable\":false,\"stateMutability\":\"pure\",\"type\":\"function\"}]",
	Bin: "0x38600c6000396112636000f3604460006000377c01000000000000000000000000000000000000000000000000000000006000510463d15ca109146200003557fe5b7f30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001602451818060045183088180828009818180090909828080927f8ef758973a8cabb7492f4d05f39a1b93dc29a57c0104feffb67c57dfc70a98e70883088180828009818180090909828080927f82885e3a7813b2259da69bc36657e8bc48c092832474ec6eb0de5dc54281d34b0883088180828009818180090909828080927fa399e58dcea3077e6d1c08044780913ff598f4d83a1494638c89c8495edb4adb0883088180828009818180090909828080927f63d273ec3d199e351a406dac488fbc7e41f42a4757a1d5ad842b8a195cb6928e0883088180828009818180090909828080927f7a14e37902fca6e97c891080d2e5da42118dc7a48c1a6406d137e6b2d4798bda0883088180828009818180090909828080927fc7398333d08c0d67b82b09f3bae043e25241145ddcf4f41e886bf359675a631d0883088180828009818180090909828080927f49219c213265f3b58b4952f83d333b8ddadc10b41e5a0b5b839dd28d22534be60883088180828009818180090909828080927ff92c4e4b3997f23536d9a245812da66d75ac291d3ea970553e280f33fb5607ff0883088180828009818180090909828080927f560ae58d7e5dbe13abc47d4410e2a1884407acadfe79e738b025b9610a7475130883088180828009818180090909828080927f9b605f2a033bbd5f4ae9034a44b14b10274188a04778f0fd4d5382791b50f5710883088180828009818180090909828080927fed013c59b0bb60afc36ff4919346f24bdcf83ee82b4101a9f0e76220ac02c6760883088180828009818180090909828080927f6bed8c2bdcd52f2cae73f1a1329f55a90bdc6d1b4dd338ea899923efa0666ba60883088180828009818180090909828080927f05d1e0ac576d1ec814b621516339ae1a291c7df36b5fd6cf0b4e3c9cd25e30720883088180828009818180090909828080927fb849e751322c2535825f4f50ecf9d117d5aa1adaad3cfde9b5005d9e090bc5120883088180828009818180090909828080927f196309f1d170d741ab1ce90c39772017fb7cdec78c37882b98a6b56956c13def0883088180828009818180090909828080927fa3a8fc6f690aa0b9a85e54650210244f8194e7bad650f6f46064ea02f1e9e4f80883088180828009818180090909828080927f7cc814ea4149bd8c15f067c1129cdc5acfcb192bc0a92381a2a5fbd4129826f70883088180828009818180090909828080927ff8bd64ba20de36cd8b1acbbc153e92fdcedfa80c28b281740a67246a22c53e9f0883088180828009818180090909828080927fd470b297263c701dbd3de0a18b97cd28356a290e5c19a49aa9af7c9b51cebba90883088180828009818180090909828080927f2bd4cdc962e3da62cb3c96f7c428a9b0d518bfa7ce26f8fce7a6af769afb65400883088180828009818180090909828080927fb61abedd23809ec1edbd0a25cb6740b2c098ba799dfd1ebf1b756078ecabfe5b0883088180828009818180090909828080927fde719f9e471c9c5c5525e61c5fd912258aba6c665e378870875892ae0e3c7d190883088180828009818180090909828080927f18053e9f0d45f9eefbda135bfd39329e34837e633565c314fb9030b9db7381bb0883088180828009818180090909828080927fa75ce5dfe5a86c3b7a5239e30b7081c925ba442cc7f0a75b9b61037d0f9c5aa10883088180828009818180090909828080927ff99472814762e714c63982b48395476c9c9cf3b208a071801edd5170542b715e0883088180828009818180090909828080927f3aadfd9e9f435085887aaf5afc9d05b849a428c353da84c04ac6d69dce88a1b70883088180828009818180090909828080927f43279d5e9bd83cf67bb96f9f76283c649a153c47f14dae36a031bdf4437b733b0883088180828009818180090909828080927ff2836dead1465663cf48597615479fb608d63867e759f63111c167705ce5dbcd0883088180828009818180090909828080927ff69c71c71b05b227ce508f275fb711d1afa8da62f91d786e12519f177d24a86a0883088180828009818180090909828080927fb53e118c3601dcdd51eb0121238d1435ccc45981ea9d69e939ee96904044921a0883088180828009818180090909828080927f0d56329982f3df38a3f19fb814c3013f419ba0eb8403b27c0c0e75c6fe1cf4680883088180828009818180090909828080927fe093294bfb03169c1d84583e4f42f7e84fbeca2dd88fdbdce5ff8ba779692e8e0883088180828009818180090909828080927f40c0a0cad932f2a819007bd28188b3b7a206c4b09b9211b6d172646843c7e7bf0883088180828009818180090909828080927f64a3ed3fce960bb53aaa1ef6c51abed6d3ea50451112cea7604b520724c6307b0883088180828009818180090909828080927f42c735abd4bf56f155751f28f4159a7a018ee26d6e297ca4678d7957906ace330883088180828009818180090909828080927f0ee68c3e38c194033994c0d4d7bde35bfafa35b22a95f915f82c5a3b0422bd9a0883088180828009818180090909828080927f8faddf61946f884c4391360b671ca84cbb24a62743f70a4d6d11c2a7e77e69040883088180828009818180090909828080927f4eb87ba4b3d521a2e65ad7f845e381ff580d206cbd9d943227fbc692a58656b00883088180828009818180090909828080927f3c07ed74275c56d187b25f08f6b12641aeabc03ba7adef25528eea293c5ef6330883088180828009818180090909828080927feb5144d110de00a827fed745247960d1b0c4df1b566a25c69b8d4920dfcaf88f0883088180828009818180090909828080927f9c8eebe1fef58743a240a03faf9f1ee7b30cf569c7b7f3a4fd0555bdce1a50bb0883088180828009818180090909828080927fbcf3250a5bf2539c8bc39817165852a5b1c8703849e9adffdb4e932902d68a150883088180828009818180090909828080927f5aee420145726e8dc9774a21e95a3e731978ec1fa7302fcdb41bf765363a84460883088180828009818180090909828080927fa87dd94092802f5aa12987a330f12e21cca117c81a3d384f0613ffc33ca8786b0883088180828009818180090909828080927f6cf601ee0e4e12fab3b1e75235a0051322ffd29912e27ecec929af4e31f9be2d0883088180828009818180090909828080927fe9c177f908149788df74e085786f9fea7ddd4ebde587667776a1746ee43993ff0883088180828009818180090909828080927fece861dd4efb6af7f2121e4cead434d78cbf78ef04fe46fc797119a8d4efc5e90883088180828009818180090909828080927fa87f07fe1d34c367abb74d2e118c6ccd675ca874dd6a6b119fa897bc5b53f6b70883088180828009818180090909828080927fc5991f171b6c36e341e0ba5381279de873304487943e749da12d3c5232096bd90883088180828009818180090909828080927f7b056e3b729fbd873d22ae369a44fc7b90d1b37eb2be6bc7ec8dd0ab0bdace930883088180828009818180090909828080927f296255b5e697e517c502ba49b18aaad89514a490a02e7a878b5d559841b93fbd0883088180828009818180090909828080927fd8d96f4b9ee595cc96032f2dbf6b26792bc4070bde83ac1676d09cc913da79ab0883088180828009818180090909828080927f5daf4d4a883a85c0e6d51d1caab084e144916db90fc9e566deb5eab28369a5980883088180828009818180090909828080927f4c72feda25fb2697df6d185100994f868d2ea2854a4229efb7bec43182c79ba70883088180828009818180090909828080927fb79d49d6f2b88854af9de8aa37d7ac1030be22a122b708c14739d4d255d34d480883088180828009818180090909828080927f04e674d88b90b1188353106ae25c0447acace9dc6d62cfe7fec2d7993dfd7a220883088180828009818180090909828080927f9f201eb644d4d4ec8dfa30bae199819d9cb6a5a960bc2b6f74cc25b4669d7e0c0883088180828009818180090909828080927f5e64449e73b48c2f6a4a89fe1beff64911e04b608d8c219f889bd69209e4d4ef0883088180828009818180090909828080927f395130bbdf4e81f728a6df6c4e8921ee145b5a64251326e8fef583dc6ee6694e0883088180828009818180090909828080927f8ce35503786afaca4c97aab5782f362641ead4da753697f484f59ca18078f5730883088180828009818180090909828080927ff3d3f7c6ec7eaf05b586273db0c292409ba27fa271808f8e5cbdf9e56fbbcb8d0883088180828009818180090909828080927f23dd8b576fa286331864d63c77fd82fa61da717533821b9382617ebd54abeb460883088180828009818180090909828080927fa7cc17e6f4f00d6bb6090ab547f5304d78b6386c68611597c0d8bf7f43aacbfe0883088180828009818180090909828080927f6f98269e5b461f1e0a4edc75d574a2b4e34cd21d0e3b7af7dca0092215ceb0a20883088180828009818180090909828080927fcf5210b2efc2241ebeaa55aeca7fb1148f4a29f3c643b874dff705d7781de1cc0883088180828009818180090909828080927f3df156c9f66b66b3f02b185ce503ea304bc876a019d20b0d26ce0a6c8308bb6e0883088180828009818180090909828080927f789a0dccf9b67ee59d33dae6bdd67349d656e5430fe635228a5cba1056977a460883088180828009818180090909828080927f6ab5fff302ec18001ad491b218c47bf0df3bd655d2454f160e16bdb8926f6b010883088180828009818180090909828080927f5bb7d0071f06646588a9ea2afcf4546e973d848e7a0738a32196368bde69701f0883088180828009818180090909828080927f62a2d1cf4a4ca616d98c8dbfec80697a07ee396c2a0fc08ef8bbcb533bd52b3d0883088180828009818180090909828080927fdbaa026275eb4def033cf764cc8618f80390f4664882b14c37fcca8759b89f270883088180828009818180090909828080927f775657d6ad46103ce00bbf79004bd37c147ae850f2dc425e099d5d5614059f220883088180828009818180090909828080927f4e61a6ea081de44f1e3b8db283b5cc635cea3e75951989ba8af6011a60aa40150883088180828009818180090909828080927f44dedebeae494420270dbb6942a8ed6428524870bc59b823e3b30f670edf39250883088180828009818180090909828080927f612aae4aab14ba9ad2137997aedc5260cf33d68a1a31a6de34af604c416e11680883088180828009818180090909828080927f88d869cee1f54bb7f88ec9d7868d6c7c4853157578ae03f2ef695a86708499bb0883088180828009818180090909828080927feedb0a063b7dc1f03f8e93988defce65913a8ba8dc0e9382677e76ae0c868d0f0883088180828009818180090909828080927f5abe0556f1b6cdc01e64bece120307961cac9fa8b86d558375db8bc7c826cdea0883088180828009818180090909828080927f7b4020e0625af3c0a94f42cb68d2793cb11eddd6f427fbd7fc224b09bc35d9b30883088180828009818180090909828080927fe9fe58498866232db2fea6c0a41cc03f76e634ee063ac68d56a0f1fdeff344b60883088180828009818180090909828080927f7069a5c1ab448edfc3a9cb07b2224957fc1bac936371ac27250156730c9b80790883088180828009818180090909828080927f6f13c2492208c1a3f33cc9f02f461279f855ce84fe77f5e29597925b6131f1950883088180828009818180090909828080927fe542243d3d82547243f858bf2bfb2a27fd8f8ea3f194d479dfc21ca58df7103d0883088180828009818180090909828080927fbbfbc0cb7f9206e17f81022078150aae7b9355992b6458c854f5a08355dad0420883088180828009818180090909828080927f94f0568cb0a7bb6f6b20bcf4dec92b0ac9e149312fdc4f1be26c605f5b3cc3500883088180828009818180090909828080927f483a9a75f05ad6c5c2501ae048d483e14ac25237e7934a6bf9e5b01abb9254e80883088180828009818180090909828080927fcae189fec307b78ba87c57dbb105ed6ac676dd7396bba9c4a94ddd1a3ace63db0883088180828009818180090909828080927f10ca0fd2a95bc198763d375f566182463e0c92ea122df6485f1c4e5a9769b32c0883088180828009818180090909828080927f8abed979216162a193fde6b6bb882963cb8d97ca96b5b5c360cca4b6d757db630883088180828009818180090909828080927fdfa3c38474b954d892b9d36f82c6258ebe41d8276278194218968a15f66b9ef908830881808280098181800909090860005260206000f3",
}

// MimcContractABI is the input ABI used to generate the binding from.
// Deprecated: Use MimcContractMetaData.ABI instead.
var MimcContractABI = MimcContractMetaData.ABI

// MimcContractBin is the compiled bytecode used for deploying new contracts.
// Deprecated: Use MimcContractMetaData.Bin instead.
var MimcContractBin = MimcContractMetaData.Bin

// DeployMimcContract deploys a new Ethereum contract, binding an instance of MimcContract to it.
func DeployMimcContract(auth *bind.TransactOpts, backend bind.ContractBackend) (common.Address, *types.Transaction, *MimcContract, error) {
	parsed, err := MimcContractMetaData.GetAbi()
	if err != nil {
		return common.Address{}, nil, nil, err
	}
	if parsed == nil {
		return common.Address{}, nil, nil, errors.New("GetABI returned nil")
	}

	address, tx, contract, err := bind.DeployContract(auth, *parsed, common.FromHex(MimcContractBin), backend)
	if err != nil {
		return common.Address{}, nil, nil, err
	}
	return address, tx, &MimcContract{MimcContractCaller: MimcContractCaller{contract: contract}, MimcContractTransactor: MimcContractTransactor{contract: contract}, MimcContractFilterer: MimcContractFilterer{contract: contract}}, nil
}

// MimcContract is an auto generated Go binding around an Ethereum contract.
type MimcContract struct {
	MimcContractCaller     // Read-only binding to the contract
	MimcContractTransactor // Write-only binding to the contract
	MimcContractFilterer   // Log filterer for contract events
}

// MimcContractCaller is an auto generated read-only Go binding around an Ethereum contract.
type MimcContractCaller struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// MimcContractTransactor is an auto generated write-only Go binding around an Ethereum contract.
type MimcContractTransactor struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// MimcContractFilterer is an auto generated log filtering Go binding around an Ethereum contract events.
type MimcContractFilterer struct {
	contract *bind.BoundContract // Generic contract wrapper for the low level calls
}

// MimcContractSession is an auto generated Go binding around an Ethereum contract,
// with pre-set call and transact options.
type MimcContractSession struct {
	Contract     *MimcContract     // Generic contract binding to set the session for
	CallOpts     bind.CallOpts     // Call options to use throughout this session
	TransactOpts bind.TransactOpts // Transaction auth options to use throughout this session
}

// MimcContractCallerSession is an auto generated read-only Go binding around an Ethereum contract,
// with pre-set call options.
type MimcContractCallerSession struct {
	Contract *MimcContractCaller // Generic contract caller binding to set the session for
	CallOpts bind.CallOpts       // Call options to use throughout this session
}

// MimcContractTransactorSession is an auto generated write-only Go binding around an Ethereum contract,
// with pre-set transact options.
type MimcContractTransactorSession struct {
	Contract     *MimcContractTransactor // Generic contract transactor binding to set the session for
	TransactOpts bind.TransactOpts       // Transaction auth options to use throughout this session
}

// MimcContractRaw is an auto generated low-level Go binding around an Ethereum contract.
type MimcContractRaw struct {
	Contract *MimcContract // Generic contract binding to access the raw methods on
}

// MimcContractCallerRaw is an auto generated low-level read-only Go binding around an Ethereum contract.
type MimcContractCallerRaw struct {
	Contract *MimcContractCaller // Generic read-only contract binding to access the raw methods on
}

// MimcContractTransactorRaw is an auto generated low-level write-only Go binding around an Ethereum contract.
type MimcContractTransactorRaw struct {
	Contract *MimcContractTransactor // Generic write-only contract binding to access the raw methods on
}

// NewMimcContract creates a new instance of MimcContract, bound to a specific deployed contract.
func NewMimcContract(address common.Address, backend bind.ContractBackend) (*MimcContract, error) {
	contract, err := bindMimcContract(address, backend, backend, backend)
	if err != nil {
		return nil, err
	}
	return &MimcContract{MimcContractCaller: MimcContractCaller{contract: contract}, MimcContractTransactor: MimcContractTransactor{contract: contract}, MimcContractFilterer: MimcContractFilterer{contract: contract}}, nil
}

// NewMimcContractCaller creates a new read-only instance of MimcContract, bound to a specific deployed contract.
func NewMimcContractCaller(address common.Address, caller bind.ContractCaller) (*MimcContractCaller, error) {
	contract, err := bindMimcContract(address, caller, nil, nil)
	if err != nil {
		return nil, err
	}
	return &MimcContractCaller{contract: contract}, nil
}

// NewMimcContractTransactor creates a new write-only instance of MimcContract, bound to a specific deployed contract.
func NewMimcContractTransactor(address common.Address, transactor bind.ContractTransactor) (*MimcContractTransactor, error) {
	contract, err := bindMimcContract(address, nil, transactor, nil)
	if err != nil {
		return nil, err
	}
	return &MimcContractTransactor{contract: contract}, nil
}

// NewMimcContractFilterer creates a new log filterer instance of MimcContract, bound to a specific deployed contract.
func NewMimcContractFilterer(address common.Address, filterer bind.ContractFilterer) (*MimcContractFilterer, error) {
	contract, err := bindMimcContract(address, nil, nil, filterer)
	if err != nil {
		return nil, err
	}
	return &MimcContractFilterer{contract: contract}, nil
}

// bindMimcContract binds a generic wrapper to an already deployed contract.
func bindMimcContract(address common.Address, caller bind.ContractCaller, transactor bind.ContractTransactor, filterer bind.ContractFilterer) (*bind.BoundContract, error) {
	parsed, err := MimcContractMetaData.GetAbi()
	if err != nil {
		return nil, err
	}
	return bind.NewBoundContract(address, *parsed, caller, transactor, filterer), nil
}

// Call invokes the (constant) contract method with params as input values and
// sets the output to result. The result type might be a single field for simple
// returns, a slice of interfaces for anonymous returns and a struct for named
// returns.
func (_MimcContract *MimcContractRaw) Call(opts *bind.CallOpts, result *[]interface{}, method string, params ...interface{}) error {
	return _MimcContract.Contract.MimcContractCaller.contract.Call(opts, result, method, params...)
}

// Transfer initiates a plain transaction to move funds to the contract, calling
// its default method if one is available.
func (_MimcContract *MimcContractRaw) Transfer(opts *bind.TransactOpts) (*types.Transaction, error) {
	return _MimcContract.Contract.MimcContractTransactor.contract.Transfer(opts)
}

// Transact invokes the (paid) contract method with params as input values.
func (_MimcContract *MimcContractRaw) Transact(opts *bind.TransactOpts, method string, params ...interface{}) (*types.Transaction, error) {
	return _MimcContract.Contract.MimcContractTransactor.contract.Transact(opts, method, params...)
}

// Call invokes the (constant) contract method with params as input values and
// sets the output to result. The result type might be a single field for simple
// returns, a slice of interfaces for anonymous returns and a struct for named
// returns.
func (_MimcContract *MimcContractCallerRaw) Call(opts *bind.CallOpts, result *[]interface{}, method string, params ...interface{}) error {
	return _MimcContract.Contract.contract.Call(opts, result, method, params...)
}

// Transfer initiates a plain transaction to move funds to the contract, calling
// its default method if one is available.
func (_MimcContract *MimcContractTransactorRaw) Transfer(opts *bind.TransactOpts) (*types.Transaction, error) {
	return _MimcContract.Contract.contract.Transfer(opts)
}

// Transact invokes the (paid) contract method with params as input values.
func (_MimcContract *MimcContractTransactorRaw) Transact(opts *bind.TransactOpts, method string, params ...interface{}) (*types.Transaction, error) {
	return _MimcContract.Contract.contract.Transact(opts, method, params...)
}

// MiMCpe7 is a free data retrieval call binding the contract method 0xd15ca109.
//
// Solidity: function MiMCpe7(uint256 in_x, uint256 in_k) pure returns(uint256 out_x)
func (_MimcContract *MimcContractCaller) MiMCpe7(opts *bind.CallOpts, in_x *big.Int, in_k *big.Int) (*big.Int, error) {
	var out []interface{}
	err := _MimcContract.contract.Call(opts, &out, "MiMCpe7", in_x, in_k)

	if err != nil {
		return *new(*big.Int), err
	}

	out0 := *abi.ConvertType(out[0], new(*big.Int)).(**big.Int)

	return out0, err

}

// MiMCpe7 is a free data retrieval call binding the contract method 0xd15ca109.
//
// Solidity: function MiMCpe7(uint256 in_x, uint256 in_k) pure returns(uint256 out_x)
func (_MimcContract *MimcContractSession) MiMCpe7(in_x *big.Int, in_k *big.Int) (*big.Int, error) {
	return _MimcContract.Contract.MiMCpe7(&_MimcContract.CallOpts, in_x, in_k)
}

// MiMCpe7 is a free data retrieval call binding the contract method 0xd15ca109.
//
// Solidity: function MiMCpe7(uint256 in_x, uint256 in_k) pure returns(uint256 out_x)
func (_MimcContract *MimcContractCallerSession) MiMCpe7(in_x *big.Int, in_k *big.Int) (*big.Int, error) {
	return _MimcContract.Contract.MiMCpe7(&_MimcContract.CallOpts, in_x, in_k)
}
