import { ethereum } from "@graphprotocol/graph-ts";
import { Transaction } from "../../generated/schema";

/// Amxx has outdated dependencies that conflict with graph-ts in the IDE
/// this redefines the logic with the correct graph.ts

export namespace events {
  export function id(event: ethereum.Event): string {
    return event.block.number.toString().concat("-").concat(event.logIndex.toString());
  }
}

export namespace transactions {
  export function log(event: ethereum.Event): Transaction {
    let tx = new Transaction(event.transaction.hash.toHex());
    tx.timestamp = event.block.timestamp;
    tx.blockNumber = event.block.number;
    tx.save();
    return tx as Transaction;
  }
  export type Tx = Transaction;
}
