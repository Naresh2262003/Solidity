// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

contract TernaryOperator{

    function isAdult(uint _age) public pure returns(string memory) {
        string memory res= (_age>=18) ? "Is an Adult":"Not an Adult";
        return res;
    }
}