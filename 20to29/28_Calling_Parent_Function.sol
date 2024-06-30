// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

// in case of super.fun() it implements the one at the rightest side while inheritance just see in the order of B and C in contract D 

contract A{
    event log(string name, uint age);

    function fun1() public virtual{
        emit log("A fun1",21);
    }

    function fun2() public virtual{
        emit log("A fun2",21);
    }
}


contract B is A{

    function fun1() public virtual override{
        emit log("B fun1",31);
        A.fun1();
    }

    function fun2() public virtual override{
        emit log("B fun2",31);
        super.fun2();
    }

}

contract C is A{
    function fun1() public virtual override{
        emit log("C fun1",41);
    }

    function fun2() public virtual override{
        emit log("C fun2",41);
    }
}

// just change the order of B and C and the result will change in case of super keyword
contract D is B,C{
    function fun1() public override(B,C){
        emit log("D fun1",51);
        B.fun1();
    }

    function fun2() public override(B,C){
        emit log("D fun2",51);
        super.fun2();
    }
}