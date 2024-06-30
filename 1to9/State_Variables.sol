// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

// Three types of variables 
// State Variables
// Local Variables
// Global Variables

contract StateVariables{
    uint public salary=1000;

    uint public id;
// This is wrong if you declare the value first and then assign the value in it without the use of constructor or function
    // id=250;

    constructor(){
        id=101;
    }

    function setId(uint _id) public returns(uint){
        id=_id;
        return id;
    }
}