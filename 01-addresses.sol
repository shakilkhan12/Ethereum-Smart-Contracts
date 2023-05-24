// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract addresses {
    address addressA = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address payable addressB = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

    

    function balance() public view returns(uint) {
        return addressA.balance;
    }
    function transferETH() public payable {
        addressB.transfer(msg.value);
    }
}