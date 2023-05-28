// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Enums {
    enum PizzaSize {
        SMALL,
        MEDIUM,
        LARGE
    }
    PizzaSize public pizzaCurrentSize;
    function orderPizza(PizzaSize _size) public {
        pizzaCurrentSize = _size;
    }
    function currentPizza() public view returns(string memory) {
        if(pizzaCurrentSize == PizzaSize.SMALL) {
            return "SMALL";
        } else if(pizzaCurrentSize == PizzaSize.MEDIUM) {
            return "MEDIUM";
        } else if(pizzaCurrentSize == PizzaSize.LARGE) {
            return "LARGE";
        } else {
            return "NO SIZE";
        }
    }
}