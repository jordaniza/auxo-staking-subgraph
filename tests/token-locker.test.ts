import { assert, describe, test, clearStore, beforeAll, afterAll } from "matchstick-as/assembly/index";
import { createMockedFunction } from "matchstick-as";
import { BigInt, Address, ethereum } from "@graphprotocol/graph-ts";
import {
  handleBoostedToMax,
  handleDeposited,
  handleEarlyExit,
  handleEjected,
  handleIncreasedAmount,
  handleIncreasedDuration,
  handleWithdrawn,
} from "../handlers/tokenLocker";
import { AVG_SECONDS_MONTH } from "../handlers/tokenLocker.utils";
import { constants } from "@amxx/graphprotocol-utils";

import {
  createDepositedEvent,
  createBoostToMaxEvent,
  createIncreaseAmountEvent,
  createIncreaseDurationEvent,
  createTerminateEarlyEvent,
  createWithdrawnEvent,
  createEjectEvent,
} from "./token-locker.helpers";

// 0xa16081f360e3847006db660bae1c6d1b2e17ec2a is the default address used in newMockEvent() function
let MOCK_ADDRESS = Address.fromString("0xa16081f360e3847006db660bae1c6d1b2e17ec2a");
let ARV_ADDRESS = Address.fromString("0x069c0Ed12dB7199c1DdAF73b94de75AAe8061d33");

function mockARV(): void {
  createMockedFunction(MOCK_ADDRESS, "veToken", "veToken():(address)")
    .withArgs([])
    .returns([ethereum.Value.fromAddress(ARV_ADDRESS)]);

  createMockedFunction(ARV_ADDRESS, "name", "name():(string)")
    .withArgs([])
    .returns([ethereum.Value.fromString("Active Rewards Vault")]);

  createMockedFunction(ARV_ADDRESS, "symbol", "symbol():(string)")
    .withArgs([])
    .returns([ethereum.Value.fromString("ARV")]);

  createMockedFunction(ARV_ADDRESS, "decimals", "decimals():(uint8)")
    .withArgs([])
    .returns([ethereum.Value.fromUnsignedBigInt(BigInt.fromI32(18))]);
}

class NumContainer {
  public val: BigInt;
  public exact: BigInt;
  constructor(value: i32) {
    this.val = BigInt.fromI32(value);
    this.exact = BigInt.fromI32(value).times(BigInt.fromI32(10).pow(18));
  }
}

function Num(value: i32): NumContainer {
  return new NumContainer(value);
}

/**
 * @dev Tests the lifecycle of a lock, from deposit, to withdraw, to exit
 *      We are testing Auxo and ARV balances adjust appropriately
 */
describe("Locks Correctly Update in the tokenLocker Events", () => {
  beforeAll(() => {
    mockARV();
  });

  afterAll(() => {
    clearStore();
  });

  test("Locks lifecycle", () => {
    let amount = Num(100);
    let amountChange = Num(50);
    let total = Num(150);

    let owner = Address.fromString("0x0000000000000000000000000000000000000001");
    let months = BigInt.fromI32(24);
    let newMonths = BigInt.fromI32(30);

    let lockDuration = months.times(AVG_SECONDS_MONTH);
    let newDuration = newMonths.times(AVG_SECONDS_MONTH);
    let lockId = MOCK_ADDRESS.toHex().concat("/").concat(owner.toHex());

    // define the events
    let depositEvent = createDepositedEvent(amount.exact, lockDuration, owner);
    let increaseAmountEvent = createIncreaseAmountEvent(amountChange.exact, owner);
    let increaseDurationEvent = createIncreaseDurationEvent(
      amountChange.exact,
      owner,
      newDuration,
      depositEvent.block.timestamp
    );
    // withdraw 50, we go down to 100 but at 30 months
    let withdrawEvent = createWithdrawnEvent(amountChange.exact, owner);
    let boostToMaxEvent = createBoostToMaxEvent(total.exact, owner);
    let terminateEarlyEvent = createTerminateEarlyEvent(amount.exact, owner);

    // deposit
    handleDeposited(depositEvent);
    assert.entityCount("ARVDeposit", 1);
    assert.entityCount("ARVLock", 1);

    assert.fieldEquals("ARVLock", lockId, "auxoValueExact", amount.exact.toString());
    assert.fieldEquals("ARVLock", lockId, "auxoValue", amount.exact.div(BigInt.fromI32(10).pow(18)).toString());
    assert.fieldEquals("ARVLock", lockId, "lockedAt", depositEvent.block.timestamp.toString());
    assert.fieldEquals("ARVLock", lockId, "lockDuration", lockDuration.toString());
    assert.fieldEquals("ARVLock", lockId, "arvValueExact", "59123520482300000000");
    assert.fieldEquals("ARVLock", lockId, "arvValue", "59.1235204823");

    // increase amount
    handleIncreasedAmount(increaseAmountEvent);
    assert.entityCount("ARVLock", 1);
    assert.entityCount("ARVIncreaseAmount", 1);

    assert.fieldEquals("ARVLock", lockId, "auxoValueExact", total.exact.toString());
    assert.fieldEquals("ARVLock", lockId, "auxoValue", total.exact.div(BigInt.fromI32(10).pow(18)).toString());
    assert.fieldEquals("ARVLock", lockId, "lockedAt", increaseAmountEvent.block.timestamp.toString());
    assert.fieldEquals("ARVLock", lockId, "lockDuration", lockDuration.toString());
    assert.fieldEquals("ARVLock", lockId, "arvValueExact", "88685280723450000000");
    assert.fieldEquals("ARVLock", lockId, "arvValue", "88.68528072345");

    // increase duration
    handleIncreasedDuration(increaseDurationEvent);
    assert.entityCount("ARVLock", 1);
    assert.entityCount("ARVIncreaseDuration", 1);

    assert.fieldEquals("ARVLock", lockId, "auxoValueExact", total.exact.toString());
    assert.fieldEquals("ARVLock", lockId, "auxoValue", total.exact.div(BigInt.fromI32(10).pow(18)).toString());
    assert.fieldEquals("ARVLock", lockId, "lockedAt", increaseAmountEvent.block.timestamp.toString());
    assert.fieldEquals("ARVLock", lockId, "lockDuration", newDuration.toString());
    assert.fieldEquals("ARVLock", lockId, "arvValueExact", "118640275106490000000");
    assert.fieldEquals("ARVLock", lockId, "arvValue", "118.64027510649");

    // make a withdrawal
    handleWithdrawn(withdrawEvent);
    assert.entityCount("ARVLock", 1);
    assert.entityCount("ARVWithdrawal", 1);

    assert.fieldEquals("ARVLock", lockId, "auxoValueExact", amount.exact.toString());
    assert.fieldEquals("ARVLock", lockId, "auxoValue", amount.exact.div(BigInt.fromI32(10).pow(18)).toString());
    assert.fieldEquals("ARVLock", lockId, "lockedAt", increaseAmountEvent.block.timestamp.toString());
    assert.fieldEquals("ARVLock", lockId, "lockDuration", newDuration.toString());
    assert.fieldEquals("ARVLock", lockId, "arvValueExact", "79093516737660000000");
    assert.fieldEquals("ARVLock", lockId, "arvValue", "79.09351673766");

    // boost it
    handleBoostedToMax(boostToMaxEvent);
    assert.entityCount("ARVLock", 1);
    assert.entityCount("ARVBoostToMax", 1);

    assert.fieldEquals("ARVLock", lockId, "auxoValueExact", amount.exact.toString());
    assert.fieldEquals("ARVLock", lockId, "auxoValue", amount.exact.div(BigInt.fromI32(10).pow(18)).toString());
    assert.fieldEquals("ARVLock", lockId, "lockedAt", boostToMaxEvent.block.timestamp.toString());
    assert.fieldEquals("ARVLock", lockId, "lockDuration", AVG_SECONDS_MONTH.times(BigInt.fromI32(36)).toString());
    assert.fieldEquals("ARVLock", lockId, "arvValueExact", "100000000000000000000");
    assert.fieldEquals("ARVLock", lockId, "arvValue", "100");

    // terminate early
    handleEarlyExit(terminateEarlyEvent);

    assert.entityCount("ARVLock", 1);
    assert.entityCount("ARVEarlyExit", 1);

    assert.fieldEquals("ARVLock", lockId, "auxoValueExact", constants.BIGINT_ZERO.toString());
    assert.fieldEquals("ARVLock", lockId, "auxoValue", constants.BIGINT_ZERO.toString());
    assert.fieldEquals("ARVLock", lockId, "lockedAt", constants.BIGINT_ZERO.toString());
    assert.fieldEquals("ARVLock", lockId, "lockDuration", constants.BIGINT_ZERO.toString());
    assert.fieldEquals("ARVLock", lockId, "arvValueExact", constants.BIGINT_ZERO.toString());
    assert.fieldEquals("ARVLock", lockId, "arvValue", constants.BIGINT_ZERO.toString());
  });

  test("Eject", () => {
    let amount = Num(100);
    let owner = Address.fromString("0x0000000000000000000000000000000000000001");
    let months = BigInt.fromI32(24);
    let lockDuration = months.times(AVG_SECONDS_MONTH);
    let lockId = MOCK_ADDRESS.toHex().concat("/").concat(owner.toHex());

    // define the events
    let depositEvent = createDepositedEvent(amount.exact, lockDuration, owner);
    let ejectEvent = createEjectEvent(amount.exact, owner);

    // deposit
    handleDeposited(depositEvent);
    assert.entityCount("ARVDeposit", 1);
    assert.entityCount("ARVLock", 1);

    // eject
    handleEjected(ejectEvent);
    assert.entityCount("ARVLock", 1);
    assert.entityCount("ARVEject", 1);

    assert.fieldEquals("ARVLock", lockId, "auxoValueExact", constants.BIGINT_ZERO.toString());
    assert.fieldEquals("ARVLock", lockId, "auxoValue", constants.BIGINT_ZERO.toString());
    assert.fieldEquals("ARVLock", lockId, "lockedAt", constants.BIGINT_ZERO.toString());
    assert.fieldEquals("ARVLock", lockId, "lockDuration", constants.BIGINT_ZERO.toString());
    assert.fieldEquals("ARVLock", lockId, "arvValueExact", constants.BIGINT_ZERO.toString());
    assert.fieldEquals("ARVLock", lockId, "arvValue", constants.BIGINT_ZERO.toString());
  });
});
