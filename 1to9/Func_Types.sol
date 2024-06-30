// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

contract FunctionTypes{
    uint public age=21;

    function viewFun() public view returns(uint){
        return age;
    }

    function pureFun() public pure returns(uint){
        return 2;
    }

    function simpleFun() public {
        age++;
    }
}