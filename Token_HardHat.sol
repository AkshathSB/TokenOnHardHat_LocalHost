// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract local_hardhat_Token {
    string public tokenName = "DRAKENS";
    string public tokenAbbrv = "DRAK";
    uint public totalSupply = 0;
    address public owner; 

    mapping(address => uint) public balances;

    constructor() {
        owner = msg.sender; 
    }
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function");
        _;
    }
    function mint(address _addr, uint _val) public onlyOwner {
        totalSupply += _val;
        balances[_addr] += _val;
    }
    function burn(address _addr, uint _val) public {
        if (balances[_addr] >= _val) {
            totalSupply -= _val;
            balances[_addr] -= _val;
        }
    }
    function transfer(address to, uint tokens) public returns (bool) {
        balances[msg.sender] -= tokens;
        balances[to] += tokens;
        return true;
    }
    function transferFrom(address from, address to, uint tokens) public returns (bool) {
        balances[from] -= tokens;
        balances[to] += tokens;
        return true;
    }
}
