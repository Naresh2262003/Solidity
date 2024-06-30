// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

contract InheritanceA{
    uint public x=100;

    function fun1() public pure virtual returns(string memory){
        return "I am alive fun1";
    }

    function fun2() public pure virtual returns(string memory){
        return "I am Naresh fun2";
    }

    function fun3() public pure virtual returns(string memory){
        return "I am alive fun2";
    }

    function fun4() public pure returns(string memory){
        return "I am alive fun3";
    }
}

contract InheritanceB is InheritanceA{
    function fun3() public pure virtual override returns(string memory){
        return "I am Likesh";
    }

    function fun2() public pure virtual override returns(string memory){
        return "Love paav Bhajji";
    }
}

contract InheritanceC is InheritanceB{
    function fun2() public pure override returns(string memory){
        return "Love you moksh";
    }
}