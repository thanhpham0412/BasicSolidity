pragma solidity ^0.4.0;

contract SimpleStorage {
    uint private storedData;

    function set(uint x) public {
        storedData = x;
    }

    function get() constant public returns (uint) {
        return storedData;
    }

    function increment(uint x) public {
        storedData = storedData + x;
    }

    function decrement(uint x) public {
        storedData = storedData - x;
    }
}