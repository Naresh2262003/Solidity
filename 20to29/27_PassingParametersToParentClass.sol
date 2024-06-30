// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

contract A{
    string public str;
    uint public num;

    constructor(string memory _str, uint _num){
        str=_str;
        num=_num;
    }
}

contract B{
    string public name;
    uint public age;

    constructor(string memory _str, uint _num){
        name=_str;
        age=_num;
    }
}

contract C is A("Naresh",21),B("Ritesh",2){

}

contract D is A,B{

    constructor() A("Naresh",21) B("Ritesh",2){

    }

}

contract E is A,B{
    constructor(string memory _str, uint _num, string memory _str2, uint _num2) A(_str,_num+2) B(_str2, _num2){

    }
}

contract F is A("Naresh",21), B{
    constructor(string memory _str, uint _num) B(_str,_num){
        
    }
}