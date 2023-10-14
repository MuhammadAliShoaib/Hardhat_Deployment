//SPDX-License-Identifier:MIT
pragma solidity ^0.8.10;

contract lecture5 {

    // function getString() pure public returns(string memory){
    //     return "hello world";
    // }

    mapping(address => uint256) public wallet;

    constructor(uint256 _amount){
        setBalance(_amount);
    }

    function setBalance(uint256 amount) public {
        require(amount>0,"Not enough amount entered");
        wallet[msg.sender] += amount;
    }

    function getBalance() view public returns(uint256){
        return wallet[msg.sender];
    }
}