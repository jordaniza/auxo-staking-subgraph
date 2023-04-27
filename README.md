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
- [ ] Local testing
- [ ] Support for pending PRV Stakes
  - [ ] Show epochDeposited vs. epoch active
  - [ ] Show balances by epoch
  - [ ] Add value for exit event
- [ ] ARV Improvements
  - [ ] Show the amount of ARV emitted in the event

## Queries

Sample Queries can be found in the [queries][./queries] folder.
Some results are saved in the [results][./queries/results] folder, these can be used for testing or as illustrative examples.

Visit https://api.thegraph.com/subgraphs/name/jordaniza/{SUBGRAPH_NAME}/graphql to query the subgraph, where subgraph name can be found in the [Subgraphs section of the docs](https://docs.auxo.fi/auxo-docs/developers/subgraphs)
