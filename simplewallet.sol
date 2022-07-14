//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


// anyone can send ether
// only owner can withdraw

contract wallet{

  address payable owner;

  
  constructor(){
      owner = payable(msg.sender);
  } 

  //receive ethers to contract address
  receive() external payable{}
  
  // withdraw ether : contract account =>  owner account
  function withdraw(uint amount) public {
      require(msg.sender == owner , "Only owner can withdraw");
      payable(msg.sender).transfer(amount);
  }
  
  // balance of contract not owner
  function balanceOfContract() public view returns(uint) {
     return address(this).balance;
  }

}