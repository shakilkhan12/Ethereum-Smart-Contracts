// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract MappingContract {
    mapping(address => bool) public subscriptions;
    mapping(address => mapping(uint => bool)) public secondSubscription;

    function setSubscription(address subscriber, bool status) public {
        subscriptions[subscriber] = status;
    }

    function getSubscription(address subscriber) public view returns (bool) {
        return subscriptions[subscriber];
    }

    function deleteSubscription(address _address) public {
        // delete will just reset value to it's defined default value above in the mapping the default value is bool false
        delete subscriptions[_address];
    }

    function setSecondSubscription(
        address _address,
        uint _number,
        bool status
    ) public {
        secondSubscription[_address][_number] = status;
    }

    function getSecondSubscription(
        address _address,
        uint _number
    ) public view returns (bool) {
        return secondSubscription[_address][_number];
    }

    function deleteSecondSubscription(address _address, uint _number) public {
        // delete will just reset value to it's defined default value above in the mapping the default value is bool false
        delete secondSubscription[_address][_number];
    }
}
