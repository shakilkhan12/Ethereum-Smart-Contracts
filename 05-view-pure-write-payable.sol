// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract PureViewWrite {
    uint number = 10;
    address payable myAddress =
        payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

    function writeFunction(uint _number) public {
        // in write function we don't need to use PURE/VIEW/PAYALBE
        // Write function means the function which update the blockchain state
        number = _number;
    }

    function viewFunction() public view returns (uint) {
        // If we only view data from the blockchain then we use VIEW
        return number;
    }

    function pureFunction(uint _number) public pure returns (uint, uint) {
        // Pure functions ensure that they not read or modify the state
        // return 2 + 2; // Valid
        // return 1 + _number // Valid
        return (2, _number); // Valid
    }

    function myFunction() public pure {
        // viewFunction(); // Invlaid because viewFunction reading data from the state
    }

    function sendEther() public payable {
        myAddress.transfer(msg.value);
        // payable(myAddress).transfer(msg.value);
    }
}
