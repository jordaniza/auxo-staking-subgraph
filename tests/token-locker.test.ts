import { assert, describe, test, clearStore, beforeAll, afterAll } from "matchstick-as/assembly/index";
import { newMockEvent } from "matchstick-as";
import { BigInt, Address, ethereum } from "@graphprotocol/graph-ts";
import { ARVDeposit } from "../generated/schema";
// // import { BoostedToMax as BoostedToMaxEvent } from "../generated/TokenLocker/TokenLocker"
// // import { handleBoostedToMax } from "../src/token-locker"
// // import { createBoostedToMaxEvent } from "./token-locker-utils"

// // Tests structure (matchstick-as >=0.5.0)
// // https://thegraph.com/docs/en/developer/matchstick/#tests-structure-0-5-0

export function createDepositedEvent(amount: BigInt, lockDuration: BigInt, owner: Address): ARVDeposit {
  // change type is an assemblyscript function that allows you to change the type of a variable
  // let depositedEvent = changetype<ARVDeposit>(newMockEvent());

  // depositedEvent.parameters = new Array();

  // depositedEvent.parameters.push(new ethereum.EventParam("amount", ethereum.Value.fromUnsignedBigInt(amount)));
  // depositedEvent.parameters.push(
  //   new ethereum.EventParam("lockDuration", ethereum.Value.fromUnsignedBigInt(lockDuration))
  // );
  // depositedEvent.parameters.push(new ethereum.EventParam("owner", ethereum.Value.fromAddress(owner)));

  let depositedEvent = new ARVDeposit("0xa16081f360e3847006db660bae1c6d1b2e17ec2a");
  depositedEvent.parameters = new Array<ethereum.EventParam>();

  let implementationParam = new ethereum.EventParam(
    "a",
    ethereum.Value.fromAddress(Address.fromString("0xa16081f360e3847006db660bae1c6d1b2e17ec2a"))
  );
  implementationParam.value = ethereum.Value.fromAddress(
    Address.fromString("0xa16081f360e3847006db660bae1c6d1b2e17ec2a")
  );

  depositedEvent.parameters.push(implementationParam);
  return depositedEvent;
}

// /**
//  * @dev Tests the lifecycle of a lock, from deposit, to withdraw, to exit
//  *      We are testing Auxo and ARV balances adjust appropriately
//  */
describe("Describe changing Locks", () => {
  beforeAll(() => {
    let amount = BigInt.fromI32(234);
    let owner = Address.fromString("0x0000000000000000000000000000000000000001");
    let lockDuration = BigInt.fromI32(0);
    let newBoostedToMaxEvent = createDepositedEvent(amount, lockDuration, owner);
    //   handleBoostedToMax(newBoostedToMaxEvent)
    // })

    // afterAll(() => {
    //   clearStore()
    // })

    // // For more test scenarios, see:
    // // https://thegraph.com/docs/en/developer/matchstick/#write-a-unit-test

    test("deposited created and stored", () => {
      // assert.addressEquals("0");
      assert.entityCount("Deposited", 10);

      // 0xa16081f360e3847006db660bae1c6d1b2e17ec2a is the default address used in newMockEvent() function
      assert.fieldEquals("BoostedToMax", "0xa16081f360e3847006db660bae1c6d1b2e17ec2a-1", "amount", "234");
      // assert.fieldEquals(
      // "BoostedToMax",
      // "0xa16081f360e3847006db660bae1c6d1b2e17ec2a-1",
      // "owner",
      // "0x0000000000000000000000000000000000000001"
      // )

      //   // More assert options:
      //   // https://thegraph.com/docs/en/developer/matchstick/#asserts
    });
  });
});
