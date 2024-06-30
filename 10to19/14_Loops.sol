// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

// Nothing new in Loops 

contract Loops{
    function loop() public pure returns(uint){
        uint count=0;

        
        for(uint i=0; i<10; i++){
            count+=5;
        }
        
        uint j=0;
        while(j<10){
            count+=5;
            j++;
        }

        do{
            count+=5;
            j++;
        }while(j<10);

        return count;
    }
}