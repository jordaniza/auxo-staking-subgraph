# Auxo Tokens Subgraph

This subgraph is used to index the Auxo Tokens on the Ethereum blockchain.
It heavily derives from the [OpenZeppelin Subgraphs](https://docs.openzeppelin.com/subgraphs/0.1.x/generate), for ERC20 balances and Approvals, with additional functionality for tracking ARV and PRV staking.

## Setup

1. Install the Graph CLI: `yarn -g @graphprotocol/graph-cli`
2. Install the dependencies: `yarn install`
3. Build packages: `graph codegen && graph build`
4. Deploy to Graph (Hosted Service ATM): `graph deploy --product hosted-service jordaniza/xyz-auxo`

## Features

- [x] ERC20 Token Balances for ARV, PRV and Auxo Tokens
- [x] ERC20 Token Approvals for ARV, PRV and Auxo Tokens
- [x] PRV RollStaker Integration
- [ ] ARV Locker Integration
- [ ] Access Control listings for Tokens
- [ ] Local steup and testing
- [ ] Move off hosted service to a more permanent solution
