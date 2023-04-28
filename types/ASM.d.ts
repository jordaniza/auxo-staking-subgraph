/// Assembly script types to remove false errors from the compiler
interface ethereum {
  event: import("@graphprotocol/graph-ts/chain/ethereum").ethereum.Event;
}

// we can just use overloads here as we need them, generic inference not working
declare function changetype<T>(input: ethereum["event"]): T & ethereum["event"];

declare type i32 = number;
