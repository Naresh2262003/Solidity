// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

contract Enum{
    enum Status{
        pending,
        cancel,
        shipped,
        accepted,
        rejected
    }

    Status public status;

    function setStatus(Status _status) public {
        status = _status;
    }

    function getStatus() public view returns(Status){
        return status;
    }

    function rejectedStatus() public{
        status= Status.rejected;
    }

    function resetStatus() public {
        delete status;
    }
}