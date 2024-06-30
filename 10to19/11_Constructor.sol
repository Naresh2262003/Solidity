// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

contract Constructor{

    uint public age;
    address public owner;
    string public name;

    constructor(uint _age, string memory _name ){
        string memory col= "lol";
        age= _age;
        owner= msg.sender;

        name=col;
        col=_name;
        // name=_name;
    }



}