// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

// 1 byte = 8 bits and 1 hexadecimal digit contains 4 bits so that mean 1 byte can contain 2 hexadecimal digits

contract FixedBytes{
    bytes3 public temp=0x21af60;
    bytes5 public temp1;

    function setHex() public {
        temp="Hex";
        temp1="Flex";
    }

    function getByte() public view returns(bytes1){
        return temp1[2];
    }

    function getLength() public view returns(uint){
        return temp1.length;
    }
}