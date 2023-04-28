/// this script fetches data from the subgraph and compares to some multicall data at the same block
/// this ensures the subgraph is indexing and aggregating data correctly
import fetch from "node-fetch";
import ethers from "ethers";
import { providers } from "@0xsequence/multicall";

import { ERC20, ERC20__factory } from "./types/index.mjs";

type GraphResult<K extends string, R = unknown> = {
  data: {
    [key in K]: R;
  };
};

class GraphResultError extends Error {
  constructor(block: number, account: string) {
    super(`tokens balance mismatch at block ${block} for account ${account}`);
  }
}

type ERC20BalancesGraphResult = GraphResult<"erc20Balances", any[]>;
type MulticallReturn = Awaited<ReturnType<typeof multicallQuery>>;

async function graphQlQuery(subgraph: string, query: string) {
  const response = await fetch(`https://api.thegraph.com/subgraphs/name/${subgraph}`, {
    headers: {
      "content-type": "application/json",
    },
    method: "POST",
    body: JSON.stringify({
      query,
      variables: null,
    }),
  });

  return await response.json();
}

function initPRVMulticall(): ERC20 {
  const provider = new ethers.providers.JsonRpcProvider("https://cloudflare-eth.com/");
  const multicall = new providers.MulticallProvider(provider);
  return ERC20__factory.connect("0xc72fbD264b40D88E445bcf82663D63FF21e722AF", multicall);
}

async function multicallQuery(blockTag: number, accounts: string[]) {
  // route through multicall contract
  const prv = initPRVMulticall();
  const balances = await Promise.all(accounts.map((account) => prv.balanceOf(account, { blockTag })));
  return balances.map((b, i) => ({ [accounts[i]]: b.toString() }));
}

async function historicalPRVGraph(blockTag: number): Promise<ERC20BalancesGraphResult> {
  const subgraph = "jordaniza/auxo-staking";
  const query = `query PRVNonZeroBalancesAtBlock {
    erc20Balances(
      block: {number: ${blockTag}}
      where: {
        and: [
          {contract_: {symbol: "PRV"}},
          {value_not: "0"},
          {account_not: null}
        ]
      }
    ) {
      account {
        id
      }
      contract {
        symbol
        name
      }
      value
      valueExact
    }
  }`;
  return (await graphQlQuery(subgraph, query)) as ERC20BalancesGraphResult;
}

// fetch user's balance from the graph
const graphBalance = (data: ERC20BalancesGraphResult, account: string) =>
  data.data.erc20Balances.find((b) => b.account.id === account)?.valueExact ?? "0";

// fetch user's balance onchain
const chainBalance = (data: MulticallReturn, account: string) =>
  data.find((b) => Object.keys(b)[0] === account)?.[account] ?? "0";

const accounts = [
  "0x079f4c9456109e34bdd8153086d0b0372d196508",
  "0x096b4f2253a430f33edc9b8e6a8e1d2fb4faa317",
  "0x0eb21ed8543789c79bed81d85b13ea31e7ac805b",
  "0x124c5e21a073fb4694308fbdf72af362451eae12",
  "0x18f23c3b96918518235136920f39cb833b113f00",
  "0x1a1087bf077f74fb21fd838a8a25cf9fe0818450",
  "0x1a6db538813dbfa63e1f19f8804447187b7d401d",
  "0x2346b18e56010272035e8ea7cf4c757fc4e3f46a",
  "0x3e541de9da4dcc73c7cfd225d4da6f232d758393",
  "0x4cc408d5428dd610630ad0e198d8e6d8acfed4e6",
  "0x6d98f705bdf4ee437b15d0de31a5a1a5e55ea14d",
  "0x6e09647dd1fb26d8161c06519d5a5e5a323f8e04",
  "0x6ea484f5cfedc03fe3725d7139e145bdd6e5d320",
  "0x74c4623d7609f3eb2665ad32ff96b44856b6051b",
  "0x8061199a31983a077e691c08b2263a4cf5c24093",
  "0x887c3599c4826f7b3cde82003b894430f27d5b92",
  "0x9fed225115a1374c7f0faef307d471c80fff1893",
  "0xdc6b5549763d893b01a41acf0d7d77ccb44f3417",
  "0xdc6ce98a9020905973c9c026c6f3e34df9998d8a",
  "0xe5d45fa1b783aa011914486d01f07f724395cc22",
  "0xec5c16f3eaf86a801a3e89201dd39bddd1786cbf",
  "0x0fa36923d4dd8139673905dcddbc747ad95ef353",
];

(async function () {
  const blockA = 17114548;
  const blockB = 17114552;

  // execute all queries in parallel
  const [graphDataTokens, multicallDataTokens, graphDataNoTokens, multicallDataNoTokens] = await Promise.all([
    historicalPRVGraph(blockA),
    multicallQuery(blockA, accounts),
    historicalPRVGraph(blockB),
    multicallQuery(blockB, accounts),
  ]);

  for (const account in accounts) {
    if (graphBalance(graphDataTokens, account) !== chainBalance(multicallDataTokens, account))
      throw new GraphResultError(blockA, account);

    if (graphBalance(graphDataNoTokens, account) !== chainBalance(multicallDataNoTokens, account))
      throw new GraphResultError(blockB, account);
  }
  console.log(`Success! Evalutated ${accounts.length} accounts`);
})();
