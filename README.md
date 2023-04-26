# Auxo Tokens Subgraph

This subgraph is used to index the Auxo Tokens on the Ethereum blockchain.
It heavily derives from the [OpenZeppelin Subgraphs](https://docs.openzeppelin.com/subgraphs/0.1.x/generate), for ERC20 balances and Approvals, with additional functionality for tracking ARV and PRV staking.

## Setup

1. Install the dependencies: `yarn install`
2. Build packages: `yarn build`
3. Deploy to Graph (Hosted Service ATM): `yarn deploy

## Features

- [x] ERC20 Token Balances for ARV, PRV and Auxo Tokens
- [x] ERC20 Token Approvals for ARV, PRV and Auxo Tokens
- [x] PRV RollStaker Integration
- [x] ARV Locker Integration
- [ ] Support for pending PRV Stakes
- [ ] Access Control listings for Tokens
- [ ] Local testing
- [ ] Move off hosted service to a more permanent solution
