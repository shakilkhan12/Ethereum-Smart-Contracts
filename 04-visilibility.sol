// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Visibility {
    function func1() public {
        // Any account/contract can use the public function
        func2(); // Valid
        func3(); // Valid
        func4(); // Invalid
    }
    function func2() private {
         // The only defined contract use uses its private functions and variables.
    }
    function func3() internal {
        // Contract itself and the inherited contracts can use their functions and variables
    }
    function func4() external {
        // Only outside accounts/contracts can call the external functions the contract itself connot call the external functions
        // Note: external only exist in function not in variables
    }
}