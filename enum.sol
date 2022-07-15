
//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

contract _enum{

    //enum support non numerical values
    //use for tracking state

    // enum can be declared out side the contract

    enum Status {
        pending,           //0
        shipped,           //1
        Accepted,          //2
        Rejected,          //3
        canceled           //4
    }

    // first element selected by default
    Status public status;

    function get() public view returns(Status){
        return status;
        // output: 0
    }

    function set(Status _status) public {
        // input in uint
        status = _status;
    } 

    function reject() public{
        status = Status.Rejected;
    }

    //delete means value become by default means reset

    function reset() public{
        delete status;
    }

}