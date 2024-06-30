// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

// can only declare them on contract level neither outside of the contract nor in the function
// possible type of key are enum, contact and Elementary Types(uint, bytes(fixed sized),string,etc)

contract Mapping{

    mapping(uint=> string) public emp_id;

    function setValues() public {
        emp_id[101]="John";
        emp_id[102]="Alex";
    }

    function addData(uint _id, string memory _empName) public {
        emp_id[_id]= _empName;
    }

    

}

struct doner_dts{
    string name;
    uint age;
    string adrs;
    uint don;
}

contract AdvMapping{
    mapping(address => doner_dts) public account_Info;

    function setDetails(string memory _name,uint _age,string memory _adrs,uint _don) public {
        account_Info[msg.sender]= doner_dts({name:_name, age:_age, adrs:_adrs, don:account_Info[msg.sender].don+_don });
    }

    function deleteData() public {
        delete account_Info[msg.sender];
    }
}

// "Ritesh",12,"Chandigarh",23