//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Counter{

    //uint means unsigned interger
    //negitive values are not included in uint

    uint public count ;


    // view keyword for view state(here count) variable 
    function get() public view returns(uint){
        return count;
    }

    // here we update state variable so view keyword not used
    function increment() public {
        count +=1 ;
    }

    // not run after count=0 bcz uint not include negitive value
     function decrement() public {
        count -= 1;
    }


}