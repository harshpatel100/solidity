//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Receiver{
 
    // inititalize event that triggerd during trasaction
    event Received(address caller , uint amount , string message);

    // fallback is special type of function which allows receive ether 
    
    fallback() external payable{

    // calling Received event with values
        emit Received( msg.sender , msg.value , "fallback called" );

    }
    
    // payable allows receive ether
    function foo( string memory _message , uint x) public payable returns(uint){

        emit Received( msg.sender , msg.value , _message );

        return x+1;

    }


}
  
contract Caller{

event Respond(bool success , bytes data);

    //lets call above contract function with help of there address
    function testCallFoo(address payable _addr) public payable{

       (bool success , bytes memory data ) = _addr.call{ value:msg.value , gas:5000}(
        abi.encodeWithSignature("foo(string,uint)" ,  "call foo" , 123 )
       );

       emit Respond( success , data); 
    }
    
    // calling a function which is not exist in given contract address
    // if function not exist then fallback function triggers
    function testCallDoesNotExist(address _addr) public{
        (bool success , bytes memory data) = _addr.call(
            abi.encodeWithSignature("thisfunisnotincontract()")
        );
        emit Respond(success , data);
    }

}


 

