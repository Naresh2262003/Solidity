// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

contract MultipleInheritance{
    function fun3() public pure virtual returns(string memory){
        return "I am alive fun2";
    }

    function fun4() public pure returns(string memory){
        return "I am alive fun3";
    }
}

contract B is MultipleInheritance{
    function fun1() public pure virtual returns(string memory){
        return "I am alive fun1";
    }

    function fun3() public pure virtual override returns(string memory){
        return "I am Naresh fun2";
    }
}

// most baselike to most derived contract 
contract A is MultipleInheritance,B{
    // override is compulsory if a function exists in any two or more parents
    function fun3() public pure override(B,MultipleInheritance) returns(string memory){
        return "i am on loop";
    }
}