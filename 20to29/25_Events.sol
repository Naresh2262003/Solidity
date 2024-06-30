// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

// when to use Event
// neither want to chnage the data nor want to access it just want to add data to blockchain(storage)

contract Events{
    event balance(address acc, string msg, uint val);

    function setData(uint _val) public {
        emit balance(msg.sender,"has value",_val);
    }
}

contract ChatApp{
    // indexing keyword can be used with three parameters
    event chat(address indexed from, address to, string msg);

    function sendMessage(address _to) public{
        emit chat(msg.sender, _to, "Happy Birthday");
    }
}