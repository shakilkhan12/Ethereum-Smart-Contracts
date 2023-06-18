// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract myContract {
    uint[] public arr = [1,2,3,4,5];
    using arrLib for uint[]; // method number 2 to access functions from a library, this code will attech all functions of the arrLib library to uint[]

    function findindex(uint _number) public view returns(uint) {
        // return arrLib.find(arr, _number); method number 1 to access functions from library
        return arr.find(_number); // we don't need to pass arr array because now all the arrLib library function are attached with uint[] 
        
    }

}

library arrLib {
    // library function should be internal or external if we declare it public then solidity will compile it seprately but if we declare is external or internal then solidity will compile with this contract
    function find(uint[] memory _arr, uint _number) internal pure returns(uint) {
        for(uint i = 0; i <= _arr.length; i++) {
            if(_arr[i] == _number) {
                return i;
            }
        }
        revert('not found');
    }
}