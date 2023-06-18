// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Pizza {
    struct OrderType{
        string name;
        uint price;
        bool placeOrdered;
    }
    mapping(uint => OrderType) public orders;
    uint8 public ordersCount = 255;
    function placeOrder(string memory _name) public {
        OrderType memory newOrder = OrderType({
            name: _name,
            price: 50,
            placeOrdered: true
        });
        orders[ordersCount] = newOrder;
        // 
// uint8 has a 256-bit limit, if we exceed the limit of uint8 then unchecked will start from 0 again and it not show any error
        unchecked {
          ordersCount++;
        }
    }
}