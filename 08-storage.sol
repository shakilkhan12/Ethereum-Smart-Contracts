// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Whatever {

  struct MyStruct {
    uint256 whoCares;
    string title;
  }

  mapping(address => MyStruct) public myStructs;
  address public owner = msg.sender;

  function dataLocation(uint256[] memory _array, string memory _string) 
    external returns (MyStruct memory, uint128[] memory)
  {
    myStructs[msg.sender] = MyStruct({whoCares: 123, title: "bar"});

    // if we want the changes to be stored:
    MyStruct storage myStruct = myStructs[msg.sender];
    myStruct.title = "foo";
    // After the execution of the function, myStructs[msg.sender].title will be foo

    // if we don't want
    MyStruct memory readOnly = myStructs[msg.sender];
    readOnly.title = "bar";
    // After the execution of the function, myStructs[msg.sender].title will still be foo

    ////
    // --> use storage to update data
    // --> use memory to read data
    ////

    // To initialize an array in memory: they can only be FIXED-SIZE arrays!
    uint128[] memory memArr = new uint128[](3);
    memArr[0] = 189;

    return (readOnly, memArr);
  }
}