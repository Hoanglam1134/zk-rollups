// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../circuits/deposit_register/smart_contract/verifier.sol";

interface IMiMC {
    function MiMCpe7(uint256, uint256) external pure returns (uint256);
}

// sample middleware.sol at the root dir
contract Middleware {
    uint256 prime =
        21888242871839275222246405745257275088548364400416034343698204186575808495617;

    uint256[4] hashZero = [
        4988684068647299082350080212880211252960307133102834465027872526193553163313,
        20464993561770278532764413369575957503086115885496206734518201755625824050222,
        8084479250503918009107008992984332503832508687890286554363264642420089984192,
        15223887864994241615791611964093384216198790188539251360197765877602650168863
    ];

    // variables
    mapping(address => bool) existedPubkeys;
    uint256[] accountRoots;
    address public coordinator;
    IMiMC public mimc;

    uint256[] depositAccountRoots;
    uint256[] depositRegisterTxRoots;
    uint noDepositRegisterTx;

    // Debug events
    event dDebug(bool state);
    event dGetUint256(uint256 value);
    event dGetString(string str);
    event dGetAddress(address addr);
    event dGetBytes20(bytes20 addr);
    event dGetUint(uint u);
    event dGetUint256Array(uint256[] arr);
    event dGetBool(bool b);

    // Main events
    //  + be triggered when receiving a deposit register transaction
    event eDepositRegister(
        uint256 fromX,
        uint256 fromY,
        uint256 toX,
        uint256 toY,
        uint256 amount,
        uint256 r8x,
        uint256 r8y,
        uint256 s,
        address ecdsaAddress
    );
    event eDepositExistence(
        uint256 fromX,
        uint256 fromY,
        uint256 toX,
        uint256 toY,
        uint256 amount,
        uint256 r8x,
        uint256 r8y,
        uint256 s,
        address ecdsaAddress
    );
    event eTransfer(
        uint256 fromX,
        uint256 fromY,
        uint256 toX,
        uint256 toY,
        uint256 amount,
        uint256 r8x,
        uint256 r8y,
        uint256 s,
        address ecdsaAddress
    );
    event eWithdraw(
        uint256 fromX,
        uint256 fromY,
        uint256 toX,
        uint256 toY,
        uint256 amount,
        uint256 r8x,
        uint256 r8y,
        uint256 s,
        address ecdsaAddress
    );

    event sDepositRegister(bool b);

    constructor(
        address _mimcContractAddress,
        uint256 initializationAccountRoot
    )   {
        mimc = IMiMC(_mimcContractAddress);
        noDepositRegisterTx = 0;
        coordinator = msg.sender;
        accountRoots.push(initializationAccountRoot);
//        emit dGetString("Middleware is deployed");
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function deposit(
        uint256 fromX,
        uint256 fromY,
        uint256 toX,
        uint256 toY,
        uint256 amount,
        uint256 r8x,
        uint256 r8y,
        uint256 s
    ) public payable {
        require(uint(amount) * 1e18 <= msg.value, "amount*1e18 != msg.value");
        address receiverAddress = address(
            bytes20((keccak256(abi.encodePacked(toX, toY))) << 96)
        );

        if (existedPubkeys[receiverAddress]) {
            _depositExistence(fromX, fromY, toX, toY, amount, r8x, r8y, s);
        } else {
            existedPubkeys[receiverAddress] = true;
            _depositRegister(fromX, fromY, toX, toY, amount, r8x, r8y, s);
        }
    }

    function _depositRegister(
        uint256 fromX,
        uint256 fromY,
        uint256 toX,
        uint256 toY,
        uint256 amount,
        uint256 r8x,
        uint256 r8y,
        uint256 s
    ) public {
        emit dGetString("depositRegister is triggered!");
        noDepositRegisterTx += 1;
        
        // create a new account
        uint256[] memory accountProperties = new uint256[](4);
        accountProperties[0] = toX;
        accountProperties[1] = toY;
        accountProperties[2] = amount;
        accountProperties[3] = 0;
        uint256 newAccountHash = uint256(mimcMultiHash(accountProperties));

        // create a new tx
        uint256[] memory txProperties = new uint256[](6);
        txProperties[0] = fromX;
        txProperties[1] = fromY;
        txProperties[2] = toX;
        txProperties[3] = toY;
        txProperties[4] = amount;
        txProperties[5] = 0;
        uint256 newTxHash = uint256(mimcMultiHash(txProperties));

        emit eDepositRegister(fromX, fromY, toX, toY, amount, r8x, r8y, s, msg.sender);

         // re-hash root
         uint256 tmp1 = newAccountHash;
         uint256 tmp2 = newTxHash;
         uint256 _noTx = noDepositRegisterTx;
         while (_noTx % 2 == 0) {
             _noTx /= 2;
             uint256[] memory inputArray = new uint256[](2);
             inputArray[0] = uint256(
                 depositAccountRoots[depositAccountRoots.length - 1]
             );
             inputArray[1] = tmp1;
             depositAccountRoots.pop();
             tmp1 = mimcMultiHash(inputArray);
             inputArray[0] = uint256(
                 depositRegisterTxRoots[depositRegisterTxRoots.length - 1]
             );
             inputArray[1] = tmp2;
             depositRegisterTxRoots.pop();
             tmp2 = mimcMultiHash(inputArray);
         }
         depositAccountRoots.push(uint256(tmp1));
         depositRegisterTxRoots.push(uint256(tmp2));
    }

    function verifyProofRegister(
        uint[2] calldata _pA,
        uint[2][2] calldata _pB,
        uint[2] calldata _pC,
        uint[4] calldata _pubSignals
    ) public {
        require(
            depositRegisterTxRoots[0] == bytes32(_pubSignals[0]),
            "Deposit Transactions are invalid!"
        );
        require(
            depositAccountRoots[0] == bytes32(_pubSignals[1]),
            "New Accounts are invalid"
        );
        require(
            accountRoots[accountRoots.length - 1] == bytes32(_pubSignals[2]),
            "The states do not match"
        );
        Groth16Verifier register = Groth16Verifier;
        require(register.verifyProof(_pA, _pB, _pC, _pubSignals));
        accountRoots.push(bytes32(_pubSignals[3]));
        for (uint8 i = 0; i < depositRegisterTxRoots.length - 1; i++) {
            depositRegisterTxRoots[i] = depositRegisterTxRoots[i + 1];
            depositAccountRoots[i] = depositAccountRoots[i + 1];
        }
        depositRegisterTxRoots.pop();
        depositAccountRoots.pop();
        noDepositRegisterTx -= 4;
        emit sDepositRegister(true);
    }

    function _depositExistence(
        uint256 fromX,
        uint256 fromY,
        uint256 toX,
        uint256 toY,
        uint256 amount,
        uint256 r8x,
        uint256 r8y,
        uint256 s
    ) public {
        emit dGetString("depositExistence is triggered!");
        emit eDepositExistence(fromX, fromY, toX, toY, amount, r8x, r8y, s, msg.sender);
    }

    function transfer(
        uint256 fromX,
        uint256 fromY,
        uint256 toX,
        uint256 toY,
        uint256 amount,
        uint256 r8x,
        uint256 r8y,
        uint256 s
    ) public {
        emit eTransfer(fromX, fromY, toX, toY, amount, r8x, r8y, s, msg.sender);
    }

    function withdraw(
        uint256 fromX,
        uint256 fromY,
        uint256 toX,
        uint256 toY,
        uint256 amount,
        uint256 r8x,
        uint256 r8y,
        uint256 s
    ) public {
        // layer 2 roll up
        // send ether to the receiver
        address receiverAddress = msg.sender;
        transferEther(payable(receiverAddress), amount);
        emit eWithdraw(fromX, fromY, toX, toY, amount, r8x, r8y, s, msg.sender);
    }

    function mimcMultiHash(uint[] memory arr) public view returns (uint) {
        uint r = 0;
        for (uint i = 0; i < arr.length; i++) {
            r =
                (((r + mimc.MiMCpe7(arr[i] % prime, r)) % prime) +
                    (arr[i] % prime)) %
                prime;
        }
        return r;
    }

    function transferEther(address payable recipient, uint256 amount) public payable{
        require(uint(amount) * 1e18 <= address(this).balance, "Insufficient balance");

        (bool callSuccess, ) = recipient.call{value: (uint(amount) * 1e18)}("");
        require(callSuccess, "Transfer failed");
    }
}
