import { Address, BigDecimal, BigInt } from "@graphprotocol/graph-ts";

import { PRVDeposit, PRVExit, PRVWithdraw } from "../generated/schema";

import {
  Deposited as DepositEvent,
  Withdrawn as WithdrawEvent,
  Exited as ExitEvent,
} from "../generated/RollStaker/IRollStaker";

import { decimals } from "@amxx/graphprotocol-utils";
import { events, transactions } from "./wrappers/amxx";

import { fetchAccount } from "./fetch/account";

import { fetchRollStaker, fetchPRVStakingBalance } from "./fetch/rollstaker";
import { fetchERC20 } from "./fetch/erc20";

export function handleDeposit(event: DepositEvent): void {
  let contract = fetchRollStaker(event.address);

  let ev = new PRVDeposit(events.id(event));
  let prv = fetchERC20(Address.fromBytes(contract.stakingToken));

  ev.emitter = contract.id;
  ev.contract = contract.id;
  ev.transaction = transactions.log(event).id;
  ev.timestamp = event.block.timestamp;

  ev.epoch = event.params.epoch;
  ev.depositor = fetchAccount(event.params.depositor).id;

  ev.value = decimals.toDecimals(event.params.amount, prv.decimals);
  ev.valueExact = event.params.amount;

  let account = fetchAccount(event.params.receiver);
  let balance = fetchPRVStakingBalance(contract, account);

  balance.valueExact = balance.valueExact.plus(event.params.amount);
  balance.value = decimals.toDecimals(balance.valueExact, prv.decimals);
  balance.save();

  ev.receiver = account.id;
  ev.receiverBalance = balance.id;
  ev.save();
}

export function handleWithdraw(event: WithdrawEvent): void {
  let contract = fetchRollStaker(event.address);

  let ev = new PRVWithdraw(events.id(event));
  let prv = fetchERC20(Address.fromBytes(contract.stakingToken));

  ev.emitter = contract.id;
  ev.contract = contract.id;
  ev.transaction = transactions.log(event).id;
  ev.timestamp = event.block.timestamp;
  ev.epoch = event.params.epoch;

  ev.value = decimals.toDecimals(event.params.amount, prv.decimals);
  ev.valueExact = event.params.amount;

  let account = fetchAccount(event.params.depositor);
  let balance = fetchPRVStakingBalance(contract, account);

  balance.valueExact = balance.valueExact.minus(event.params.amount);
  balance.value = decimals.toDecimals(balance.valueExact, prv.decimals);
  balance.save();

  ev.receiver = account.id;
  ev.receiverBalance = balance.id;
  ev.save();
}

export function handleExit(event: ExitEvent): void {
  let contract = fetchRollStaker(event.address);

  let ev = new PRVExit(events.id(event));

  ev.emitter = contract.id;
  ev.contract = contract.id;
  ev.transaction = transactions.log(event).id;
  ev.timestamp = event.block.timestamp;
  ev.epoch = event.params.epoch;

  let account = fetchAccount(event.params.depositor);
  let balance = fetchPRVStakingBalance(contract, account);

  balance.valueExact = BigInt.fromString("0");
  balance.value = BigDecimal.fromString("0");
  balance.save();

  ev.receiver = account.id;
  ev.receiverBalance = balance.id;
  ev.save();
}
