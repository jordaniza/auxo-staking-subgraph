import { assert, describe, test, clearStore, beforeAll, afterEach } from "matchstick-as/assembly/index";
import { createMockedFunction } from "matchstick-as";
import { BigInt, Address, ethereum } from "@graphprotocol/graph-ts";
import { handleDeposit, handleExit, handleWithdraw } from "../handlers/rollstaker";
import { constants } from "@amxx/graphprotocol-utils";
import { createDepositedEvent, createExitEvent, createWithdrawnEvent } from "./rollstaker.helpers";

// 0xa16081f360e3847006db660bae1c6d1b2e17ec2a is the default address used in newMockEvent() function
let MOCK_ADDRESS = Address.fromString("0xa16081f360e3847006db660bae1c6d1b2e17ec2a");
let PRV_ADDRESS = Address.fromString("0xc72fbD264b40D88E445bcf82663D63FF21e722AF");

function mockRollStaker(): void {
  createMockedFunction(MOCK_ADDRESS, "currentEpochId", "currentEpochId():(uint8)")
    .withArgs([])
    .returns([ethereum.Value.fromUnsignedBigInt(BigInt.fromI32(0))]);

  createMockedFunction(MOCK_ADDRESS, "epochPendingBalance", "epochPendingBalance():(uint256)")
    .withArgs([])
    .returns([ethereum.Value.fromUnsignedBigInt(BigInt.fromI32(0))]);

  createMockedFunction(MOCK_ADDRESS, "stakingToken", "stakingToken():(address)")
    .withArgs([])
    .returns([ethereum.Value.fromAddress(PRV_ADDRESS)]);

  createMockedFunction(PRV_ADDRESS, "name", "name():(string)")
    .withArgs([])
    .returns([ethereum.Value.fromString("Passive Rewards Vault")]);

  createMockedFunction(PRV_ADDRESS, "symbol", "symbol():(string)")
    .withArgs([])
    .returns([ethereum.Value.fromString("PRV")]);

  createMockedFunction(PRV_ADDRESS, "decimals", "decimals():(uint8)")
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

let depositValue = Num(100);
let withdrawValue = Num(50);
let _2 = BigInt.fromI32(2);
let epoch = BigInt.fromI32(1);
let depositor = Address.fromString("0x0000000000000000000000000000000000000001");
let receiver = Address.fromString("0x0000000000000000000000000000000000000002");

let balanceId = MOCK_ADDRESS.toHex().concat("/").concat(receiver.toHex());

// define the events
let firstDepositEvent = createDepositedEvent(depositValue.exact, depositor, receiver, epoch, 1);
let secondDepositEvent = createDepositedEvent(depositValue.exact, depositor, receiver, epoch, 2);
let firstWithdrawalEvent = createWithdrawnEvent(withdrawValue.exact, receiver, epoch, 3);
let exitEvent = createExitEvent(receiver, epoch, 4);

/**
 * @dev Tests the lifecycle of staking - deposits, withdrawals and exits
 */
describe("RollStaker Balances Correctly Update", () => {
  beforeAll(() => {
    mockRollStaker();
  });

  afterEach(() => {
    clearStore();
  });

  test("Deposits", () => {
    handleDeposit(firstDepositEvent);

    // check the events logged
    assert.entityCount("PRVDeposit", 1);
    assert.entityCount("PRVStakingBalance", 1);

    assert.fieldEquals("PRVStakingBalance", balanceId, "valueExact", depositValue.exact.toString());
    assert.fieldEquals("PRVStakingBalance", balanceId, "value", depositValue.val.toString());

    // send the event again and check it adds correctly
    handleDeposit(secondDepositEvent);
    assert.entityCount("PRVDeposit", 2);
    assert.entityCount("PRVStakingBalance", 1);

    assert.fieldEquals("PRVStakingBalance", balanceId, "valueExact", depositValue.exact.times(_2).toString());
    assert.fieldEquals("PRVStakingBalance", balanceId, "value", depositValue.val.times(_2).toString());
  });

  test("Withdrawals", () => {
    handleDeposit(firstDepositEvent);
    handleWithdraw(firstWithdrawalEvent);

    assert.entityCount("PRVDeposit", 1);
    assert.entityCount("PRVWithdraw", 1);
    assert.entityCount("PRVStakingBalance", 1);

    assert.fieldEquals(
      "PRVStakingBalance",
      balanceId,
      "valueExact",
      depositValue.exact.minus(withdrawValue.exact).toString()
    );
    assert.fieldEquals("PRVStakingBalance", balanceId, "value", depositValue.val.minus(withdrawValue.val).toString());
  });

  test("Exits", () => {
    handleDeposit(firstDepositEvent);
    handleExit(exitEvent);

    assert.entityCount("PRVDeposit", 1);
    assert.entityCount("PRVExit", 1);
    assert.entityCount("PRVStakingBalance", 1);

    assert.fieldEquals("PRVStakingBalance", balanceId, "valueExact", constants.BIGINT_ZERO.toString());
    assert.fieldEquals("PRVStakingBalance", balanceId, "value", constants.BIGINT_ZERO.toString());
  });
});
