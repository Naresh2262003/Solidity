// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

contract FixedSizedArray{
    // 1st way - declaring values at the that time only
    // uint[5] public arr=[1,2,3,4,5];

    // 2nd way using function
    uint[5] public arr;

    // 3rd way using constructor
    constructor(){
        arr=[1,0,1,0,1];
    }

    function updateArray() public {
        
        // get array
        // uint temp= arr[1];

        // update array
        arr[4]=100;
        arr=[5,4,3,2,1];

        // delete 
        delete arr[3];

        // length of the array
        // uint length= arr.length;
    }

    function creatingArrayInMemory() public pure returns(uint[] memory){
        // declaring array in memory or as a local variable 
        // can only create fixed size array in local variable

        uint[] memory class=new uint[](6);
        // class[0]=5;
        return class;
    }

    function getArray() public view returns(uint[5] memory){
        return arr;
    }

}