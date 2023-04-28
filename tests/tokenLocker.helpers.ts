import { newMockEvent } from "matchstick-as";
import { BigInt, Address, ethereum } from "@graphprotocol/graph-ts";
import {
  BoostedToMax,
  Deposited,
  EarlyExit,
  Ejected,
  IncreasedAmount,
  IncreasedDuration,
  Withdrawn,
} from "../generated/TokenLocker/ITokenLocker";

/// helper functions to create mock events in matchstick tests
/// consume these in test with the relevant handlers.
/// note: order matters in the parameters array - the getter for .params[$name]
/// returns a hardcoded index: see the generated code for the details

export function createDepositedEvent(amount: BigInt, lockDuration: BigInt, owner: Address): Deposited {
  let depositedEvent = changetype<Deposited>(newMockEvent());

  depositedEvent.block.number = BigInt.fromI32(1);
  depositedEvent.block.timestamp = BigInt.fromI32(1);

  depositedEvent.parameters = new Array();
  depositedEvent.parameters.push(new ethereum.EventParam("amount", ethereum.Value.fromUnsignedBigInt(amount)));
  depositedEvent.parameters.push(
    new ethereum.EventParam("lockDuration", ethereum.Value.fromUnsignedBigInt(lockDuration))
  );
  depositedEvent.parameters.push(new ethereum.EventParam("owner", ethereum.Value.fromAddress(owner)));

  return depositedEvent;
}

export function createBoostToMaxEvent(amount: BigInt, owner: Address): BoostedToMax {
  let btmEvent = changetype<BoostedToMax>(newMockEvent());

  btmEvent.block.number = BigInt.fromI32(1000);
  btmEvent.block.timestamp = BigInt.fromI32(1000);

  btmEvent.parameters = new Array();
  btmEvent.parameters.push(new ethereum.EventParam("amount", ethereum.Value.fromUnsignedBigInt(amount)));
  btmEvent.parameters.push(new ethereum.EventParam("owner", ethereum.Value.fromAddress(owner)));

  return btmEvent;
}

export function createIncreaseAmountEvent(amount: BigInt, owner: Address): IncreasedAmount {
  let iaEvent = changetype<IncreasedAmount>(newMockEvent());

  iaEvent.block.number = BigInt.fromI32(5);
  iaEvent.block.timestamp = BigInt.fromI32(5);

  iaEvent.parameters = new Array();
  iaEvent.parameters.push(new ethereum.EventParam("amount", ethereum.Value.fromUnsignedBigInt(amount)));
  iaEvent.parameters.push(new ethereum.EventParam("owner", ethereum.Value.fromAddress(owner)));

  return iaEvent;
}

export function createIncreaseDurationEvent(
  amount: BigInt,
  owner: Address,
  lockDuration: BigInt,
  lockedAt: BigInt
): IncreasedDuration {
  let idEvent = changetype<IncreasedDuration>(newMockEvent());

  idEvent.block.number = BigInt.fromI32(10);
  idEvent.block.timestamp = BigInt.fromI32(10);

  idEvent.parameters = new Array();
  idEvent.parameters.push(new ethereum.EventParam("amount", ethereum.Value.fromUnsignedBigInt(amount)));
  idEvent.parameters.push(new ethereum.EventParam("lockDuration", ethereum.Value.fromUnsignedBigInt(lockDuration)));
  idEvent.parameters.push(new ethereum.EventParam("lockedAt", ethereum.Value.fromUnsignedBigInt(lockedAt)));
  idEvent.parameters.push(new ethereum.EventParam("owner", ethereum.Value.fromAddress(owner)));

  return idEvent;
}

export function createWithdrawnEvent(amount: BigInt, owner: Address): Withdrawn {
  let wEvent = changetype<Withdrawn>(newMockEvent());

  wEvent.block.number = BigInt.fromI32(20);
  wEvent.block.timestamp = BigInt.fromI32(20);

  wEvent.parameters = new Array();
  wEvent.parameters.push(new ethereum.EventParam("amount", ethereum.Value.fromUnsignedBigInt(amount)));
  wEvent.parameters.push(new ethereum.EventParam("owner", ethereum.Value.fromAddress(owner)));

  return wEvent;
}

export function createTerminateEarlyEvent(amount: BigInt, owner: Address): EarlyExit {
  let TEEvent = changetype<EarlyExit>(newMockEvent());

  TEEvent.block.number = BigInt.fromI32(2000);
  TEEvent.block.timestamp = BigInt.fromI32(2000);

  TEEvent.parameters = new Array();
  TEEvent.parameters.push(new ethereum.EventParam("lockOwner", ethereum.Value.fromAddress(owner)));
  TEEvent.parameters.push(new ethereum.EventParam("amount", ethereum.Value.fromUnsignedBigInt(amount)));

  return TEEvent;
}

export function createEjectEvent(amount: BigInt, owner: Address): Ejected {
  let ejectEvent = changetype<Ejected>(newMockEvent());

  ejectEvent.block.number = BigInt.fromI32(2000);
  ejectEvent.block.timestamp = BigInt.fromI32(2000);

  ejectEvent.parameters = new Array();
  ejectEvent.parameters.push(new ethereum.EventParam("amount", ethereum.Value.fromUnsignedBigInt(amount)));
  ejectEvent.parameters.push(new ethereum.EventParam("owner", ethereum.Value.fromAddress(owner)));

  return ejectEvent;
}
