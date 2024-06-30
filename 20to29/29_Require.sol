// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

// required is used for
// validate input 
// access control
// in error handling

// benefits
// gas return 
// if any state change in occured in state variables then it will be undo

contract RequireKeyword{
    address public owner= msg.sender;
    uint public age=21;

    function checkRequire(uint _x) public {
        age++;
        require(_x>2,"Less Ethers than 2");
    }

    function onlyOwner() public{
        require(owner==msg.sender,"You are not the owner");
        age--;
        // _;
    }
}