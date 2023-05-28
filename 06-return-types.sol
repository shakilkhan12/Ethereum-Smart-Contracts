// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ReturnsType {
    uint myUint = 0;
    string myName;

    function myFunction(uint _number) public pure returns (uint) {
        return _number;
    }

    function myFunction2(uint _number) public pure returns (uint myData) {
        myData = _number;
    }

    function myFunction3(
        uint _number
    ) public pure returns (uint myData, bool boolValue) {
        myData = _number;
        boolValue = true;
    }

    function myFunction4(
        uint _number
    ) public pure returns (uint result, uint age) {
        return (_number, 45);
    }

    function myFunction5(
        uint _number
    ) public pure returns (uint result, string memory name) {
        return (_number, "Shakil Khan");
    }

    function myFunction6() public {
        (uint result, string memory name) = myFunction5(5);
        myUint = result;
        myName = name;
    }

    function myFunction7() public {
        myUint = myFunction(5);
    }
}
