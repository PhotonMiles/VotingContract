# Voting Smart Contract

This repository contains a simple Voting smart contract developed in Solidity. The contract allows for creating polls with multiple options and casting votes on those options.

## Features

- Create polls with a question and multiple options.
- Cast votes on different poll options.
- Retrieve poll results, including the question, options, and votes count for each option.

## Getting Started

To use this contract, you'll need an Ethereum development environment setup, like Remix, Truffle, or Hardhat.

### Prerequisites

- Install [Node.js and npm](https://nodejs.org/en/download/) (if using Truffle or Hardhat).
- Access to a Solidity development environment such as [Remix](https://remix.ethereum.org/) for online compilation or Truffle/Hardhat for local development.

### Using the Contract

1. **Deploy the Contract:**
   - If using Remix, simply paste the contract code into a new file and deploy it to a test network.
   - If using Truffle or Hardhat, compile and migrate the contract to your desired network.

2. **Interact with the Contract:**
   - Create polls by calling `createPoll` with a question and an array of options.
   - Cast votes by calling `vote` with the poll index and the option index.
   - Retrieve poll results by calling `getPoll` with the poll index.

## Contributing

Feel free to fork the repository and submit pull requests.

## Authors

- PhotonMiles - Initial work - [PhotonMiles](https://github.com/PhotonMiles)

## License

This project is licensed under the MIT License - see the LICENSE file for details.
