// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract MyContract {
    uint orderCount = 1;
    struct Order {
        address client;
        string name;
        bool delivered;
    }
    mapping(uint => Order) public myOrders;
    function createOrder(string memory _name) public {
       Order memory newOrder = Order({
           client: msg.sender,
           name: _name,
           delivered: false
       });
       myOrders[orderCount] = newOrder;
       orderCount++;
    }
    function delivered(uint orderNumber) public {
        myOrders[orderNumber].delivered = true;
    }
}