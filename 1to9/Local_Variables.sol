// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

// Local Variables are defined in a function 
// Local Variables get stored in memory/RAM (CallStack) and tempory whereas state variables gets stored in blockchain storage 

contract LocalVariables{
    uint public age;
    bool public b;
    address public newAdd;

    function fun(uint _x, bool _y, address _z) public returns(uint, bool) {
        uint i=29;
        bool b1=true;

        i+=29;
        b1=false;

        age=_x;
        b= _y;
        newAdd= _z;

        return (age, b);

    }
}