// SPDX-License-Identifier: MIT

pragma solidity ^0.8;

// Nothing new in case of break and continue statement in solidity

contract ContinueBreakKeyword{

    function dummy() public pure returns(uint){
        uint count=0;

        while(true){
            if(count==5){
                break;
            }
            count++;
        }


        uint j=0;
        while(j<5){
            
            if(j%2==0){
                j++;
                continue;
            }
            count++;
            j++;
        }

        return count;
    }
}