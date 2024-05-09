// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// import "./DepositRegisterVerifier.sol";

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
        uint256 s
    );
    event eDepositExistence(
        uint256 fromX,
        uint256 fromY,
        uint256 toX,
        uint256 toY,
        uint256 amount,
        uint256 r8x,
        uint256 r8y,
        uint256 s
    );
    event eTransfer(
        uint256 fromX,
        uint256 fromY,
        uint256 toX,
        uint256 toY,
        uint256 amount,
        uint256 r8x,
        uint256 r8y,
        uint256 s
    );
    event eWithdraw(
        uint256 fromX,
        uint256 fromY,
        uint256 toX,
        uint256 toY,
        uint256 amount,
        uint256 r8x,
        uint256 r8y,
        uint256 s
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
        emit dGetString("Middleware is deployed");
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
//        uint256 newAccountHash = uint256(mimcMultiHash(accountProperties));

        // create a new tx
        uint256[] memory txPropertes = new uint256[](6);
        txPropertes[0] = fromX;
        txPropertes[1] = fromY;
        txPropertes[2] = toX;
        txPropertes[3] = toY;
        txPropertes[4] = 0;
        txPropertes[5] = amount;
//        uint256 newTxHash = uint256(mimcMultiHash(txPropertes));

        emit eDepositRegister(fromX, fromY, toX, toY, amount, r8x, r8y, s);

        // // re-hash root
        // uint256 tmp1 = newAccountHash;
        // uint256 tmp2 = newTxHash;
        // uint256 _noTx = noDepositRegisterTx;
        // while (_noTx % 2 == 0) {
        //     _noTx /= 2;
        //     uint256[] memory inputArray = new uint256[](2);
        //     inputArray[0] = uint256(
        //         depositAccountRoots[depositAccountRoots.length - 1]
        //     );
        //     inputArray[1] = tmp1;
        //     depositAccountRoots.pop();
        //     tmp1 = mimcMultiHash(inputArray);
        //     inputArray[0] = uint256(
        //         depositRegisterTxRoots[depositRegisterTxRoots.length - 1]
        //     );
        //     inputArray[1] = tmp2;
        //     depositRegisterTxRoots.pop();
        //     tmp2 = mimcMultiHash(inputArray);
        // }
        // depositAccountRoots.push(uint256(tmp1));
        // depositRegisterTxRoots.push(uint256(tmp2));
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
        emit eDepositExistence(fromX, fromY, toX, toY, amount, r8x, r8y, s);
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
        emit eTransfer(fromX, fromY, toX, toY, amount, r8x, r8y, s);
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
        emit eWithdraw(fromX, fromY, toX, toY, amount, r8x, r8y, s);
        // layer 2 roll up
        // send ether to the receiver
        address receiverAddress = address(
            bytes20((keccak256(abi.encodePacked(toX, toY))) << 96)
        );
        transferEther(payable(receiverAddress), amount);
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
        require(amount <= address(this).balance, "Insufficient balance");

        (bool callSuccess, ) = recipient.call{value: amount}("");
        require(callSuccess, "Transfer failed");
    }
}
