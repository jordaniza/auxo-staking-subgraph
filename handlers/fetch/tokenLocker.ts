import { Address } from "@graphprotocol/graph-ts";
import { constants } from "@amxx/graphprotocol-utils";
import { ARVLock, Account, TokenLockerContract } from "../../generated/schema";
import { ITokenLocker } from "../../generated/TokenLocker/ITokenLocker";
import { fetchAccount } from "./account";

export function fetchTokenLocker(address: Address): TokenLockerContract {
  let contract = TokenLockerContract.load(address);

  if (contract == null) {
    let endpoint = ITokenLocker.bind(address);
    let veToken = endpoint.try_veToken();

    // Common
    contract = new TokenLockerContract(address);
    contract.veToken = veToken.reverted ? constants.ADDRESS_ZERO : veToken.value;

    contract.asAccount = address;
    contract.save();

    let account = fetchAccount(address);
    account.asRollStaker = address;
    account.save();
  }

  return contract;
}

export function fetchARVLock(contract: TokenLockerContract, account: Account): ARVLock {
  let id = contract.id.toHex().concat("/").concat(account.id.toHex());
  let lock = ARVLock.load(id);

  if (lock == null) {
    lock = new ARVLock(id);

    lock.contract = contract.id;
    lock.account = account.id;
    lock.auxoValue = constants.BIGDECIMAL_ZERO;
    lock.auxoValueExact = constants.BIGINT_ZERO;
    lock.arvValue = constants.BIGDECIMAL_ZERO;
    lock.arvValueExact = constants.BIGINT_ZERO;
    lock.lockedAt = constants.BIGINT_ZERO;
    lock.lockDuration = constants.BIGINT_ZERO;

    lock.save();
  }

  return lock;
}
