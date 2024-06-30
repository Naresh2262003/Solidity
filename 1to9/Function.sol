// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

contract Function{
    uint age =20;

    function add(int _a, int _b) public pure returns(int){
        int sum = _a+_b;
        return sum;
    }
    
// simple or transactional func do not return anything (althought if you return wont give you error but wont get the returned thing)s
    // function changeAge() public returns(uint){
    //     return age++;
    // }
    function changeAge() public returns(uint){
        return age++;
    }

    function getAge() public view returns(uint){
        return age;
    }

    function fun() internal{

    }
}

// declaring a function out of the smart contract so you cant set its visibility as public, internal, external or private
function squareOfNum(int _x) pure returns(int){
    return _x*_x;
}