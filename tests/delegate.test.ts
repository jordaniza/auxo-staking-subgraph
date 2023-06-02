import {
  assert,
  describe,
  test,
  clearStore,
  beforeAll,
  afterAll,
  newMockEvent,
  afterEach,
} from "matchstick-as/assembly/index";
import { createMockedFunction } from "matchstick-as";
import { BigInt, Address, ethereum } from "@graphprotocol/graph-ts";
import { handleDelegateChanged } from "../handlers/erc20";
import { constants } from "@amxx/graphprotocol-utils";
import { events } from "../handlers/wrappers/amxx";
import { DelegateChanged } from "../generated/ARV/IERC20Delegation";

// 0xa16081f360e3847006db660bae1c6d1b2e17ec2a is the default address used in newMockEvent() function
let MOCK_ADDRESS = Address.fromString("0xa16081f360e3847006db660bae1c6d1b2e17ec2a");
let ARV_ADDRESS = Address.fromString("0x069c0Ed12dB7199c1DdAF73b94de75AAe8061d33");

/// helper functions to create mock events in matchstick tests
/// consume these in test with the relevant handlers.
/// note: order matters in the parameters array - the getter for .params[$name]
/// returns a hardcoded index: see the generated code for the details

export function createDelegateChangedEvent(
  delegator: Address,
  fromDelegate: Address,
  toDelegate: Address,
  block: i32
): DelegateChanged {
  let event = changetype<DelegateChanged>(newMockEvent());

  event.block.number = BigInt.fromI32(block);
  event.block.timestamp = BigInt.fromI32(block);

  event.parameters = new Array();
  event.parameters.push(new ethereum.EventParam("delegator", ethereum.Value.fromAddress(delegator)));
  event.parameters.push(new ethereum.EventParam("fromDelegate", ethereum.Value.fromAddress(fromDelegate)));
  event.parameters.push(new ethereum.EventParam("toDelegate", ethereum.Value.fromAddress(toDelegate)));

  return event;
}

function mockARV(): void {
  createMockedFunction(MOCK_ADDRESS, "name", "name():(string)")
    .withArgs([])
    .returns([ethereum.Value.fromString("Active Rewards Vault")]);
  createMockedFunction(MOCK_ADDRESS, "symbol", "symbol():(string)")
    .withArgs([])
    .returns([ethereum.Value.fromString("ARV")]);
  createMockedFunction(MOCK_ADDRESS, "decimals", "decimals():(uint8)")
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

let self = Address.fromString("0x0000000000000000000000000000000000000001");
let delegate = Address.fromString("0x0000000000000000000000000000000000000002");

// define the events
let delegateSelf = createDelegateChangedEvent(self, self, self, 1);
let delegateOther = createDelegateChangedEvent(self, self, delegate, 2);

let id = MOCK_ADDRESS.toHex().concat("/").concat(self.toHex());

describe("List of delegates is correctly updated", () => {
  beforeAll(() => {
    mockARV();
  });

  afterEach(() => {
    clearStore();
  });

  test("delegate to self", () => {
    handleDelegateChanged(delegateSelf);

    assert.entityCount("ERC20DelegateChanged", 1);
    assert.entityCount("DelegationStatus", 1);

    assert.fieldEquals("DelegationStatus", id, "delegate", self.toHexString());
    assert.fieldEquals("DelegationStatus", id, "delegator", self.toHexString());
  });

  test("delegate to other", () => {
    handleDelegateChanged(delegateOther);

    assert.entityCount("ERC20DelegateChanged", 1);
    assert.entityCount("DelegationStatus", 1);

    assert.fieldEquals("DelegationStatus", id, "delegate", delegate.toHexString());
    assert.fieldEquals("DelegationStatus", id, "delegator", self.toHexString());
  });

  test("change delegate", () => {
    handleDelegateChanged(delegateSelf);

    assert.fieldEquals("DelegationStatus", id, "delegate", self.toHexString());

    handleDelegateChanged(delegateOther);

    assert.entityCount("ERC20DelegateChanged", 2);
    assert.entityCount("DelegationStatus", 1);

    assert.fieldEquals("DelegationStatus", id, "delegate", delegate.toHexString());
  });
});
