// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

contract Strings{
    string public str= "Naresh";

    function checkString(string memory _name) public pure returns(string memory){
        string memory name= _name;
        return name;
    }
}