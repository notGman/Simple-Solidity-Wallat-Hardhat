// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Wallat {
    address payable public owner;

    constructor(){
        owner = payable(msg.sender);
    }

    receive() external payable{}

    function withDraw(uint _amount) external{
        require(msg.sender == owner,"You are not the owner");
        require(_amount <= address(this).balance);
        payable(msg.sender).transfer(_amount);
    }

    function getBalance() external view returns(uint){
        return address(this).balance;
    }

}