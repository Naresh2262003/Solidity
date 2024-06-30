// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

contract DynamicBytes{
    bytes public temp;

    function getValue() public view returns(bytes memory){
        return temp;
    }

    function push() public{
        temp.push('d');
    } 

    function pop() public{
        temp.pop();
    }

    function length() public view returns(uint){
        return temp.length;
    }
}