// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

struct Emp{
        string name;
        uint age;
        address acc;
}

contract Struct{
    // struct Emp{
    //     string name;
    //     uint age;
    //     address acc;
    // }

    Emp public emp;
    Emp[] public emps;

    constructor(){
        emp.name="Naresh";
        emp.age=21;
        emp.acc= msg.sender;
    }

    function setValues() public {
        Emp memory emp1= Emp("Kalesh",32,msg.sender);

        Emp memory emp2= Emp({name:"flower",acc:msg.sender,age:63});

        Emp memory emp3;

        emp3.name= "ajay";
        emp3.age=53;
        emp3.acc=address(0);

        emps.push(emp1);
        emps.push(emp2);
        emps.push(emp3);


        Emp storage emp_temp= emp;
        // Emp memory emp_temp= emp;

        emp_temp.name="Op";

        // updating state variable
        // emp.name="lemon";


        // reset emp name
        delete emp.name;
        // reset a emp data
        delete emps[0];



    }
}
