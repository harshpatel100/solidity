

//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

contract Immutable{

    // uppercase variable name

    // value can set into constructor 
    // never modified

    uint public immutable MY_VALUE ;

    constructor(uint val){
        MY_VALUE = val;
    }

}