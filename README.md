# Auxo Tokens Subgraph

This subgraph is used to index the Auxo Tokens on the Ethereum blockchain.
It heavily derives from the [OpenZeppelin Subgraphs](https://docs.openzeppelin.com/subgraphs/0.1.x/generate), for ERC20 balances and Approvals, with additional functionality for tracking ARV and PRV staking.

## Setup

1. Install the dependencies: `yarn install`
2. Build packages: `yarn build`
3. Ensure tests pass `yarn test` or `yarn coverage` for coverage report
4. Deploy to Graph (Hosted Service ATM): `yarn deploy`

## Structure

Good chunks of this codebase are autogenerated, the main working directories are:

- abis: Contains the ABIs for the contracts we are indexing
- handlers: assemblyscript functions that are called when events are emitted, and are used to update the state of the subgraph
- queries: some prebuilt queries for testing and examples
- schema: the graph expects a single `schema.graphql` file, which defines the entities and their fields. We use a simple script to concatenate the graphql files in this folder into a single schema file in the root. You can edit these files separately to keep things modular and then run `yarn build` to generate the schema file.
- tests: matchstick tests for unit testing subgraph logic
- types: some type bindings I find useful to supress valid assemblyscript from showing as errors in the IDE

## Features

- [x] ERC20 Token Balances for ARV, PRV and Auxo Tokens
- [x] ERC20 Token Approvals for ARV, PRV and Auxo Tokens
- [x] PRV RollStaker Integration
- [x] ARV Locker Integration
- [ ] testing
  - [x] Matchstick Locker (except eject)
  - [x] Matchstick Locker (eject)
  - [x] Matchstick Rollstaker
  - [ ] Integration Balances
- [ ] Data/Lifecycle modelling
- [ ] Support for pending PRV Stakes
  - [ ] Show epochDeposited vs. epoch active
  - [ ] Show balances by epoch
  - [ ] Add value for exit event
- [ ] ARV Improvements
  - [ ] Show the amount of ARV emitted in the event

## Queries

Sample Queries can be found in the [queries][./queries] folder.
Some results are saved in the [results][./queries/results] folder, these can be used for testing or as illustrative examples.

Visit https://api.thegraph.com/subgraphs/name/jordaniza/auxo-staking/graphql to query the subgraph, this can also be found in the [Subgraphs section of the docs](https://docs.auxo.fi/auxo-docs/developers/subgraphs)
