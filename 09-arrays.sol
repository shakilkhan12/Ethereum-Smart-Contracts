// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Arrays {
    // dynamic array
    uint[] public ages = [3,5,6,7,8];
    // dynamic string array
    string[] public names = ['shakil', 'adil'];
    // fixed size array
    uint[3] public numbers = [2,4,5];
    // multi dimension array
    uint[][] public carNumbers = [[1,2,67,45], [4,5,76,45],[4,80,67,76]]; // all sub arrays will have the same length
    string[][] public classNames = [['react class', 'vuejs class'], ['abc', 'some value']];
    uint[][2] public allNumbers = [[1,3,6], [1,4,8]];
    function getNumbers() public view returns(uint[] memory) {
        return ages;
    }
    function getMultiSizeArray() public view returns(uint) {
          return carNumbers[0][0];
    }
    function addNumber(uint _number) public {
        ages.push(_number);
    }
    function removeLastItem() public {
        ages.pop();
    }
    function deleteNumber(uint _index) public {
        // delete not remove item completly it's just set value to 0 it does not change the array length
        delete ages[_index];
    }
    
}