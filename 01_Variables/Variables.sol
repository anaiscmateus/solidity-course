// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    // State Variables
    int256 public myInt = 1; // can be -1
    uint public myUint = 1; // can't be -1
    uint256 public myUint256  = 1; // 256 bytes stored in the number
    uint8 public myUint8 = 1;

    string public myString = "hello world";
    bytes32 public myBytes32 = "hello world";

    address public myAddress = 0x1234567890AbcdEF1234567890aBcdef12345678; // username on the blockchain

    // you can create you're own custom data type with struct
    struct MyStruct {
        uint256 myUint256;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, "Hello World"); // create an instance of MyStruct

    // Local Variables - exist inside solidity functions
    function getValue() public pure returns(uint) {
        uint value = 1; // this var is local and is only available in this function
        return value;
    }
}