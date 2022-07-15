//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

//main contract => having real code
contract main{
  uint public a=10;

 function addHundred() external {
     a = a+100 ;
 }

}

//making interface => which function we wanna use 
interface Imain{
    //we init 2 functions
    function a() external view returns(uint);
    function addHundred() external; 

}


contract callwithinterface {

    

// _MainContract = coded contract
//with help of interface we direct use that functions 
    function _addOne(address _MainContract) external {
        Imain(_MainContract).addHundred();
    }

    function _viewving(address _MainContract) external view{
        Imain(_MainContract).a();
    }


}