// SimpleTokenTransfer.sol

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleTokenTransfer {
    mapping(address => uint256) private _balances;
    uint256 private _totalSupply;

    // Events
    event Transfer(address indexed from, address indexed to, uint256 value);

    
    constructor(uint256 initialSupply) {
        _totalSupply = initialSupply;
        _balances[msg.sender] = initialSupply;
        emit Transfer(address(0), msg.sender, initialSupply);
    }

    
    function totalSupply() external view returns (uint256) {
        return _totalSupply;
    }

  
    function balanceOf(address account) external view returns (uint256) {
        return _balances[account];
    }

   
    function transfer(address to, uint256 value) external returns (bool) {
        require(to != address(0), "Transfer to the zero address");
        require(_balances[msg.sender] >= value, "Insufficient balance");

        _balances[msg.sender] -= value;
        _balances[to] += value;

        emit Transfer(msg.sender, to, value);
        return true;
    }
}
