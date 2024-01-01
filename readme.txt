Documentation:

Contract Name: SimpleTokenTransfer

This is a basic ERC-20 token contract allowing users to transfer tokens.
Contract Description:

The contract allows users to transfer tokens to each other.
The token is named "SimpleTokenTransfer."
State Variables:

_balances: Mapping to store the token balances of addresses.
_totalSupply: Total supply of tokens.
Events:

Transfer:
Emits when tokens are transferred from one address to another.
Constructor:

Initializes the contract with the total supply of tokens, assigning all tokens to the deployer.
Functions:

totalSupply:

Returns the total supply of the token.
balanceOf:

Returns the balance of a specific address.
transfer:

Transfers tokens from the sender to the recipient.
License:

MIT License
This is a simple ERC-20 token contract for educational purposes. For a production environment, additional features such as approvals, allowances, and security considerations should be implemented.

link to the contract: https://explorer.devnet.redbelly.network/contract/0x1d1fbbdc4e8ce86fd59f60a61aa6e13ffea9e33c?tab=code