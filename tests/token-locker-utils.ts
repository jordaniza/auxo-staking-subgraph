// import { newMockEvent } from "matchstick-as"
// import { ethereum, BigInt, Address } from "@graphprotocol/graph-ts"
// import {
//   BoostedToMax,
//   Deposited,
//   EjectBufferUpdated,
//   Ejected,
//   IncreasedLock,
//   Initialized,
//   MinLockAmountChanged,
//   OwnershipTransferred,
//   WhitelistedChanged,
//   Withdrawn
// } from "../generated/TokenLocker/TokenLocker"

// export function createBoostedToMaxEvent(
//   amount: BigInt,
//   owner: Address
// ): BoostedToMax {
//   let boostedToMaxEvent = changetype<BoostedToMax>(newMockEvent())

//   boostedToMaxEvent.parameters = new Array()

//   boostedToMaxEvent.parameters.push(
//     new ethereum.EventParam("amount", ethereum.Value.fromUnsignedBigInt(amount))
//   )
//   boostedToMaxEvent.parameters.push(
//     new ethereum.EventParam("owner", ethereum.Value.fromAddress(owner))
//   )

//   return boostedToMaxEvent
// }

// export function createDepositedEvent(
//   amount: BigInt,
//   lockDuration: BigInt,
//   owner: Address
// ): Deposited {
//   let depositedEvent = changetype<Deposited>(newMockEvent())

//   depositedEvent.parameters = new Array()

//   depositedEvent.parameters.push(
//     new ethereum.EventParam("amount", ethereum.Value.fromUnsignedBigInt(amount))
//   )
//   depositedEvent.parameters.push(
//     new ethereum.EventParam(
//       "lockDuration",
//       ethereum.Value.fromUnsignedBigInt(lockDuration)
//     )
//   )
//   depositedEvent.parameters.push(
//     new ethereum.EventParam("owner", ethereum.Value.fromAddress(owner))
//   )

//   return depositedEvent
// }

// export function createEjectBufferUpdatedEvent(
//   newEjectBuffer: BigInt
// ): EjectBufferUpdated {
//   let ejectBufferUpdatedEvent = changetype<EjectBufferUpdated>(newMockEvent())

//   ejectBufferUpdatedEvent.parameters = new Array()

//   ejectBufferUpdatedEvent.parameters.push(
//     new ethereum.EventParam(
//       "newEjectBuffer",
//       ethereum.Value.fromUnsignedBigInt(newEjectBuffer)
//     )
//   )

//   return ejectBufferUpdatedEvent
// }

// export function createEjectedEvent(amount: BigInt, owner: Address): Ejected {
//   let ejectedEvent = changetype<Ejected>(newMockEvent())

//   ejectedEvent.parameters = new Array()

//   ejectedEvent.parameters.push(
//     new ethereum.EventParam("amount", ethereum.Value.fromUnsignedBigInt(amount))
//   )
//   ejectedEvent.parameters.push(
//     new ethereum.EventParam("owner", ethereum.Value.fromAddress(owner))
//   )

//   return ejectedEvent
// }

// export function createIncreasedLockEvent(
//   amount: BigInt,
//   lockDuration: BigInt,
//   owner: Address
// ): IncreasedLock {
//   let increasedLockEvent = changetype<IncreasedLock>(newMockEvent())

//   increasedLockEvent.parameters = new Array()

//   increasedLockEvent.parameters.push(
//     new ethereum.EventParam("amount", ethereum.Value.fromUnsignedBigInt(amount))
//   )
//   increasedLockEvent.parameters.push(
//     new ethereum.EventParam(
//       "lockDuration",
//       ethereum.Value.fromUnsignedBigInt(lockDuration)
//     )
//   )
//   increasedLockEvent.parameters.push(
//     new ethereum.EventParam("owner", ethereum.Value.fromAddress(owner))
//   )

//   return increasedLockEvent
// }

// export function createInitializedEvent(version: i32): Initialized {
//   let initializedEvent = changetype<Initialized>(newMockEvent())

//   initializedEvent.parameters = new Array()

//   initializedEvent.parameters.push(
//     new ethereum.EventParam(
//       "version",
//       ethereum.Value.fromUnsignedBigInt(BigInt.fromI32(version))
//     )
//   )

//   return initializedEvent
// }

// export function createMinLockAmountChangedEvent(
//   newLockAmount: BigInt
// ): MinLockAmountChanged {
//   let minLockAmountChangedEvent = changetype<MinLockAmountChanged>(
//     newMockEvent()
//   )

//   minLockAmountChangedEvent.parameters = new Array()

//   minLockAmountChangedEvent.parameters.push(
//     new ethereum.EventParam(
//       "newLockAmount",
//       ethereum.Value.fromUnsignedBigInt(newLockAmount)
//     )
//   )

//   return minLockAmountChangedEvent
// }

// export function createOwnershipTransferredEvent(
//   previousOwner: Address,
//   newOwner: Address
// ): OwnershipTransferred {
//   let ownershipTransferredEvent = changetype<OwnershipTransferred>(
//     newMockEvent()
//   )

//   ownershipTransferredEvent.parameters = new Array()

//   ownershipTransferredEvent.parameters.push(
//     new ethereum.EventParam(
//       "previousOwner",
//       ethereum.Value.fromAddress(previousOwner)
//     )
//   )
//   ownershipTransferredEvent.parameters.push(
//     new ethereum.EventParam("newOwner", ethereum.Value.fromAddress(newOwner))
//   )

//   return ownershipTransferredEvent
// }

// export function createWhitelistedChangedEvent(
//   account: Address,
//   whitelisted: boolean
// ): WhitelistedChanged {
//   let whitelistedChangedEvent = changetype<WhitelistedChanged>(newMockEvent())

//   whitelistedChangedEvent.parameters = new Array()

//   whitelistedChangedEvent.parameters.push(
//     new ethereum.EventParam("account", ethereum.Value.fromAddress(account))
//   )
//   whitelistedChangedEvent.parameters.push(
//     new ethereum.EventParam(
//       "whitelisted",
//       ethereum.Value.fromBoolean(whitelisted)
//     )
//   )

//   return whitelistedChangedEvent
// }

// export function createWithdrawnEvent(
//   amount: BigInt,
//   owner: Address
// ): Withdrawn {
//   let withdrawnEvent = changetype<Withdrawn>(newMockEvent())

//   withdrawnEvent.parameters = new Array()

//   withdrawnEvent.parameters.push(
//     new ethereum.EventParam("amount", ethereum.Value.fromUnsignedBigInt(amount))
//   )
//   withdrawnEvent.parameters.push(
//     new ethereum.EventParam("owner", ethereum.Value.fromAddress(owner))
//   )

//   return withdrawnEvent
// }
