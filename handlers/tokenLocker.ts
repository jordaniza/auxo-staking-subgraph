import { Address, BigInt } from "@graphprotocol/graph-ts";
import { constants, decimals } from "@amxx/graphprotocol-utils";
import { events, transactions } from "./wrappers/amxx";
import {
  Deposited as DepositEvent,
  Withdrawn as WithdrawEvent,
  BoostedToMax as BoostedToMaxEvent,
  IncreasedAmount as IncreasedAmountEvent,
  IncreasedDuration as IncreasedDurationEvent,
  Ejected as EjectedEvent,
  EarlyExit as EarlyExitEvent,
} from "../generated/TokenLocker/ITokenLocker";

import { fetchARVLock, fetchTokenLocker } from "./fetch/tokenLocker";
import { ARVDeposit, ARVEarlyExit, ARVEject, ARVIncreaseAmount, ARVIncreaseDuration } from "../generated/schema";
import { fetchERC20 } from "./fetch/erc20";
import { fetchAccount } from "./fetch/account";
import { ARVWithdrawal } from "../generated/schema";
import { ARVBoostToMax } from "../generated/schema";
import { MAX_LOCK_DURATION, getARVValue, maxRatioArray } from "./tokenLocker.utils";

export function handleDeposited(event: DepositEvent): void {
  let ev = new ARVDeposit(events.id(event));

  let contract = fetchTokenLocker(event.address);
  let arv = fetchERC20(Address.fromBytes(contract.veToken));

  ev.emitter = contract.id;
  ev.contract = contract.id;
  ev.transaction = transactions.log(event).id;
  ev.timestamp = event.block.timestamp;

  ev.amount = decimals.toDecimals(event.params.amount, arv.decimals);
  ev.amountExact = event.params.amount;
  ev.lockDuration = event.params.lockDuration;

  let account = fetchAccount(event.params.owner);
  ev.owner = account.id;

  let lock = fetchARVLock(contract, account);

  lock.auxoValueExact = event.params.amount;
  lock.auxoValue = decimals.toDecimals(lock.auxoValueExact, arv.decimals);

  lock.arvValueExact = getARVValue(lock.auxoValueExact, event.params.lockDuration);
  lock.arvValue = decimals.toDecimals(lock.arvValueExact, arv.decimals);

  lock.lockDuration = event.params.lockDuration;
  lock.lockedAt = event.block.timestamp;

  lock.save();

  ev.lock = lock.id;

  ev.save();
}

export function handleIncreasedAmount(event: IncreasedAmountEvent): void {
  let ev = new ARVIncreaseAmount(events.id(event));

  let contract = fetchTokenLocker(event.address);
  let arv = fetchERC20(Address.fromBytes(contract.veToken));

  ev.emitter = contract.id;
  ev.contract = contract.id;
  ev.transaction = transactions.log(event).id;
  ev.timestamp = event.block.timestamp;

  ev.amount = decimals.toDecimals(event.params.amount, arv.decimals);
  ev.amountExact = event.params.amount;

  let account = fetchAccount(event.params.owner);
  ev.owner = account.id;

  let lock = fetchARVLock(contract, account);

  // add to the existing amount
  lock.auxoValueExact = lock.auxoValueExact.plus(event.params.amount);
  lock.auxoValue = decimals.toDecimals(lock.auxoValueExact, arv.decimals);

  // take the new arv value based on the new auxo value
  lock.arvValueExact = getARVValue(lock.auxoValueExact, lock.lockDuration);
  lock.arvValue = decimals.toDecimals(lock.arvValueExact, arv.decimals);

  // reset the lock
  lock.lockedAt = event.block.timestamp;

  lock.save();
  ev.lock = lock.id;
  ev.save();
}

export function handleWithdrawn(event: WithdrawEvent): void {
  let ev = new ARVWithdrawal(events.id(event));

  let contract = fetchTokenLocker(event.address);
  let arv = fetchERC20(Address.fromBytes(contract.veToken));

  ev.emitter = contract.id;
  ev.contract = contract.id;
  ev.transaction = transactions.log(event).id;
  ev.timestamp = event.block.timestamp;

  ev.amount = decimals.toDecimals(event.params.amount, arv.decimals);
  ev.amountExact = event.params.amount;

  let account = fetchAccount(event.params.owner);
  ev.owner = account.id;

  let lock = fetchARVLock(contract, account);

  // sub from the existing amount
  lock.auxoValueExact = lock.auxoValueExact.minus(event.params.amount);
  lock.auxoValue = decimals.toDecimals(lock.auxoValueExact, arv.decimals);

  // take the new arv value based on the new auxo value
  lock.arvValueExact = getARVValue(lock.auxoValueExact, lock.lockDuration);
  lock.arvValue = decimals.toDecimals(lock.arvValueExact, arv.decimals);

  lock.save();
  ev.lock = lock.id;
  ev.save();
}

export function handleBoostedToMax(event: BoostedToMaxEvent): void {
  let ev = new ARVBoostToMax(events.id(event));

  let contract = fetchTokenLocker(event.address);
  let arv = fetchERC20(Address.fromBytes(contract.veToken));

  ev.emitter = contract.id;
  ev.contract = contract.id;
  ev.transaction = transactions.log(event).id;
  ev.timestamp = event.block.timestamp;

  ev.amount = decimals.toDecimals(event.params.amount, arv.decimals);
  ev.amountExact = event.params.amount;

  let account = fetchAccount(event.params.owner);
  ev.owner = account.id;

  let lock = fetchARVLock(contract, account);

  // if the lock duration is not the max, then we need to update the arv value
  if (lock.lockDuration !== MAX_LOCK_DURATION) {
    // duration will now be max
    lock.lockDuration = MAX_LOCK_DURATION;

    // take the new arv value based on the new lock duration
    lock.arvValueExact = getARVValue(lock.auxoValueExact, lock.lockDuration);
    lock.arvValue = decimals.toDecimals(lock.arvValueExact, arv.decimals);
  }

  // reset the lock
  lock.lockedAt = event.block.timestamp;

  lock.save();
  ev.lock = lock.id;
  ev.save();
}

export function handleIncreasedDuration(event: IncreasedDurationEvent): void {
  let ev = new ARVIncreaseDuration(events.id(event));

  let contract = fetchTokenLocker(event.address);
  let arv = fetchERC20(Address.fromBytes(contract.veToken));

  ev.emitter = contract.id;
  ev.contract = contract.id;
  ev.transaction = transactions.log(event).id;
  ev.timestamp = event.block.timestamp;

  ev.amount = decimals.toDecimals(event.params.amount, arv.decimals);
  ev.amountExact = event.params.amount;
  ev.lockDuration = event.params.lockDuration;
  ev.lockedAt = event.params.lockedAt;

  let account = fetchAccount(event.params.owner);
  ev.owner = account.id;

  let lock = fetchARVLock(contract, account);

  // get the new arv value based on the new lock duration
  lock.arvValueExact = getARVValue(lock.auxoValueExact, event.params.lockDuration);
  lock.arvValue = decimals.toDecimals(lock.arvValueExact, arv.decimals);
  lock.lockDuration = event.params.lockDuration;

  lock.save();
  ev.lock = lock.id;
  ev.save();
}

export function handleEjected(event: EjectedEvent): void {
  let ev = new ARVEject(events.id(event));

  let contract = fetchTokenLocker(event.address);
  let arv = fetchERC20(Address.fromBytes(contract.veToken));

  ev.emitter = contract.id;
  ev.contract = contract.id;
  ev.transaction = transactions.log(event).id;
  ev.timestamp = event.block.timestamp;

  ev.amount = decimals.toDecimals(event.params.amount, arv.decimals);
  ev.amountExact = event.params.amount;

  let account = fetchAccount(event.params.owner);
  ev.owner = account.id;

  let lock = fetchARVLock(contract, account);

  lock.auxoValue = constants.BIGDECIMAL_ZERO;
  lock.auxoValueExact = constants.BIGINT_ZERO;
  lock.arvValue = constants.BIGDECIMAL_ZERO;
  lock.arvValueExact = constants.BIGINT_ZERO;
  lock.lockDuration = constants.BIGINT_ZERO;
  lock.lockedAt = constants.BIGINT_ZERO;

  lock.save();
  ev.lock = lock.id;
  ev.save();
}

export function handleEarlyExit(event: EarlyExitEvent): void {
  let ev = new ARVEarlyExit(events.id(event));

  let contract = fetchTokenLocker(event.address);
  let arv = fetchERC20(Address.fromBytes(contract.veToken));

  ev.emitter = contract.id;
  ev.contract = contract.id;
  ev.transaction = transactions.log(event).id;
  ev.timestamp = event.block.timestamp;

  ev.amount = decimals.toDecimals(event.params.amount, arv.decimals);
  ev.amountExact = event.params.amount;

  let account = fetchAccount(event.params.lockOwner);
  ev.owner = account.id;

  let lock = fetchARVLock(contract, account);

  lock.auxoValue = constants.BIGDECIMAL_ZERO;
  lock.auxoValueExact = constants.BIGINT_ZERO;
  lock.arvValue = constants.BIGDECIMAL_ZERO;
  lock.arvValueExact = constants.BIGINT_ZERO;
  lock.lockDuration = constants.BIGINT_ZERO;
  lock.lockedAt = constants.BIGINT_ZERO;

  lock.save();
  ev.lock = lock.id;
  ev.save();
}
