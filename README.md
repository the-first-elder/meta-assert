# FundMe Smart Contract

## Overview

FundMe is a decentralized application (dApp) built on the Ethereum blockchain, utilizing Solidity to implement a smart contract for fundraising. This project aims to provide a transparent and secure way for users to contribute funds to a project, with the contract owner having the ability to withdraw the funds once the goal is met.

## Features

- **Funding**: Users can contribute funds to the contract by calling the `fund` function. The minimum contribution amount is set to 1 Ether (1e18 wei).
- **Withdrawal**: The contract owner can withdraw all funds collected by calling the `withdraw` function. This function iterates through all funders and sends their contributions back to them.
- **Access Control**: The contract uses a modifier `onlyOwner` to restrict certain functions to the contract owner.
- **Fallback and Receive Functions**: The contract includes fallback and receive functions to allow for direct funding by sending Ether to the contract's address.

## Installation

To interact with this contract, you will need:

- An Ethereum wallet (e.g., MetaMask)
- A development environment set up for Solidity development (e.g., Truffle, Hardhat)

## Usage

1. **Deploy the Contract**: Deploy the `Fund` contract to the Ethereum network using your preferred development environment.
2. **Fund the Contract**: Users can fund the contract by sending Ether to the contract's address or by calling the `fund` function with the desired amount.
3. **Withdraw Funds**: The contract owner can withdraw all funds by calling the `withdraw` function.

## Security

- **Funding Limit**: The contract enforces a minimum funding limit to prevent spam contributions.
- **Access Control**: The `onlyOwner` modifier ensures that only the contract owner can withdraw funds.
- **Fallback and Receive Functions**: These functions are used to handle direct Ether transfers to the contract, providing a seamless funding experience.

## Contributing

Contributions are welcome. Please open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.