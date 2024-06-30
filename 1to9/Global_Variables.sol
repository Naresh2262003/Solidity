// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

// Global Variables are the variables that exist in global worksapce and provide information about the blockchain and transaction properties.
// List of some important ones
// https://chatgpt.com/share/bcf35f76-61fd-4efd-892d-41953fad55bd

contract GlobalVariables{
    address public myadd= msg.sender;
    uint public time= block.timestamp;
    // uint public diff= block.difficulty;  (ain't working)
    uint public gascost= tx.gasprice;

}