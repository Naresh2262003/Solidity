// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

// If-ELse doesn't work on contract level 
// Used in functions

contract IfElse{

    uint public x=21;

    function IsAdult(uint _age) public pure returns(string memory){
        string memory res;

        if(_age>=60){
            res= "Is a Senior Citizen";
        }else if(_age>=18){
            res="Is an Adult";
        }else{
            res="Not an Adult";
        }

        return res;
    }
}

function add() pure {
    uint x=5;
    // stri

    if(x<=5){

    }else{

    }
}