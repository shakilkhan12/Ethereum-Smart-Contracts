// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract stringBytes {
    string public nameA = "Shakil";
    bytes public nameB = "Khan";
    string public nameC = string(nameB);
    bytes public nameD = bytes(nameA);

    function joinVariables() public view returns (string memory) {
        bytes memory newVariable = abi.encodePacked(nameA, " ", nameB);
        return string(newVariable);
    }
}
