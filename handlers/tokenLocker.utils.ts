import { BigInt } from "@graphprotocol/graph-ts";

export const maxRatioArray = [
  BigInt.fromString("1"),
  BigInt.fromString("2"),
  BigInt.fromString("3"),
  BigInt.fromString("4"),
  BigInt.fromString("5"),
  BigInt.fromString("6"),
  BigInt.fromString("83333333333300000"), // 6
  BigInt.fromString("105586554548800000"), // 7
  BigInt.fromString("128950935744800000"), // 8
  BigInt.fromString("153286798191400000"), // 9
  BigInt.fromString("178485723463700000"), // 10
  BigInt.fromString("204461099502300000"), // 11
  BigInt.fromString("231142134539100000"), // 12
  BigInt.fromString("258469880674300000"), // 13
  BigInt.fromString("286394488282000000"), // 14
  BigInt.fromString("314873248847800000"), // 15
  BigInt.fromString("343869161986300000"), // 16
  BigInt.fromString("373349862059400000"), // 17
  BigInt.fromString("403286798191400000"), // 18
  BigInt.fromString("433654597035900000"), // 19
  BigInt.fromString("464430560048100000"), // 20
  BigInt.fromString("495594261536300000"), // 21
  BigInt.fromString("527127223437300000"), // 22
  BigInt.fromString("559012649336100000"), // 23
  BigInt.fromString("591235204823000000"), // 24
  BigInt.fromString("623780834516600000"), // 25
  BigInt.fromString("656636608405400000"), // 26
  BigInt.fromString("689790591861100000"), // 27
  BigInt.fromString("723231734933100000"), // 28
  BigInt.fromString("756949777475800000"), // 29
  BigInt.fromString("790935167376600000"), // 30
  BigInt.fromString("825178989697100000"), // 31
  BigInt.fromString("859672904965600000"), // 32
  BigInt.fromString("894409095191000000"), // 33
  BigInt.fromString("929380216424000000"), // 34
  BigInt.fromString("964579356905500000"), // 35
  BigInt.fromString("1000000000000000000"), // 36
];

export const AVG_SECONDS_MONTH = BigInt.fromI32(2628000);
export const MAX_LOCK_DURATION = BigInt.fromI32(36).times(AVG_SECONDS_MONTH);
export const ONE_ETHER = BigInt.fromString("1000000000000000000");

export function getARVValue(amount: BigInt, duration: BigInt): BigInt {
  const month = duration.div(AVG_SECONDS_MONTH);
  const multiplier = maxRatioArray[month.toI32()];
  return amount.times(multiplier).div(ONE_ETHER);
}
