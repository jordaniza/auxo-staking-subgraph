import { newMockEvent } from "matchstick-as";
import { BigInt, Address, ethereum } from "@graphprotocol/graph-ts";
import { Deposited, Exited, Withdrawn } from "../generated/RollStaker/IRollStaker";

/// helper functions to create mock events in matchstick tests
/// consume these in test with the relevant handlers.
/// note: order matters in the parameters array - the getter for .params[$name]
/// returns a hardcoded index: see the generated code for the details

export function createDepositedEvent(
  amount: BigInt,
  depositor: Address,
  receiver: Address,
  epoch: BigInt,
  at: i32
): Deposited {
  let event = changetype<Deposited>(newMockEvent());

  event.block.number = BigInt.fromI32(at);
  event.block.timestamp = BigInt.fromI32(at);

  event.parameters = new Array();
  event.parameters.push(new ethereum.EventParam("depositor", ethereum.Value.fromAddress(depositor)));
  event.parameters.push(new ethereum.EventParam("receiver", ethereum.Value.fromAddress(receiver)));
  event.parameters.push(new ethereum.EventParam("epoch", ethereum.Value.fromUnsignedBigInt(epoch)));
  event.parameters.push(new ethereum.EventParam("amount", ethereum.Value.fromUnsignedBigInt(amount)));

  return event;
}

export function createWithdrawnEvent(amount: BigInt, receiver: Address, epoch: BigInt, at: i32): Withdrawn {
  let event = changetype<Withdrawn>(newMockEvent());

  event.block.number = BigInt.fromI32(at);
  event.block.timestamp = BigInt.fromI32(at);

  event.parameters = new Array();
  event.parameters.push(new ethereum.EventParam("receiver", ethereum.Value.fromAddress(receiver)));
  event.parameters.push(new ethereum.EventParam("epoch", ethereum.Value.fromUnsignedBigInt(epoch)));
  event.parameters.push(new ethereum.EventParam("amount", ethereum.Value.fromUnsignedBigInt(amount)));

  return event;
}

export function createExitEvent(receiver: Address, epoch: BigInt, at: i32): Exited {
  let event = changetype<Exited>(newMockEvent());

  event.block.number = BigInt.fromI32(at);
  event.block.timestamp = BigInt.fromI32(at);

  event.parameters = new Array();
  event.parameters.push(new ethereum.EventParam("receiver", ethereum.Value.fromAddress(receiver)));
  event.parameters.push(new ethereum.EventParam("epoch", ethereum.Value.fromUnsignedBigInt(epoch)));

  return event;
}
