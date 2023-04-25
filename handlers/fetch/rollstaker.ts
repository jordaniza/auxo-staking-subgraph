import { Address } from "@graphprotocol/graph-ts";
import { constants } from "@amxx/graphprotocol-utils";
import { IRollStaker } from "../../generated/RollStaker/IRollStaker";
import { Account, PRVStakingBalance, RollStakerContract } from "../../generated/schema";
import { fetchAccount } from "./account";

export function fetchRollStaker(address: Address): RollStakerContract {
  let contract = RollStakerContract.load(address);

  if (contract == null) {
    let endpoint = IRollStaker.bind(address);

    let currentEpochId = endpoint.try_currentEpochId();
    let epochPendingBalance = endpoint.try_epochPendingBalance();
    let stakingToken = endpoint.try_stakingToken();

    // user stakes is a mapping, can't initialize it here

    // Common
    contract = new RollStakerContract(address);
    contract.currentEpochId = currentEpochId.reverted ? 0 : currentEpochId.value;
    contract.epochPendingBalance = epochPendingBalance.reverted ? constants.BIGINT_ZERO : epochPendingBalance.value;
    contract.stakingToken = stakingToken.reverted ? constants.ADDRESS_ZERO : stakingToken.value;

    contract.asAccount = address;
    contract.save();

    let account = fetchAccount(address);
    account.asRollStaker = address;
    account.save();
  }

  return contract;
}

export function fetchPRVStakingBalance(contract: RollStakerContract, account: Account): PRVStakingBalance {
  let id = contract.id.toHex().concat("/").concat(account.id.toHex());
  let balance = PRVStakingBalance.load(id);

  if (balance == null) {
    balance = new PRVStakingBalance(id);
    balance.contract = contract.id;
    balance.account = account.id;
    balance.value = constants.BIGDECIMAL_ZERO;
    balance.valueExact = constants.BIGINT_ZERO;
    balance.save();
  }

  return balance;
}
