import { Address } from "@graphprotocol/graph-ts";
import { decimals } from "@amxx/graphprotocol-utils";
import { ERC20Transfer, ERC20DelegateChanged } from "../generated/schema";
import { fetchAccount } from "./fetch/account";
import {
  fetchERC20,
  fetchERC20Balance,
  fetchERC20Approval,
  fetchERC20Delegation,
  fetchDelegationStatus,
} from "./fetch/erc20";
import { events, transactions } from "./wrappers/amxx";
import { Transfer as TransferEvent, Approval as ApprovalEvent } from "../generated/Auxo/IERC20";
import { DelegateChanged as DelegateChangedEvent } from "../generated/ARV/IERC20Delegation";

export function handleTransfer(event: TransferEvent): void {
  let contract = fetchERC20(event.address);
  let ev = new ERC20Transfer(events.id(event));
  ev.emitter = contract.id;
  ev.transaction = transactions.log(event).id;
  ev.timestamp = event.block.timestamp;
  ev.contract = contract.id;
  ev.value = decimals.toDecimals(event.params.value, contract.decimals);
  ev.valueExact = event.params.value;

  if (event.params.from == Address.zero()) {
    let totalSupply = fetchERC20Balance(contract, null);
    totalSupply.valueExact = totalSupply.valueExact.plus(event.params.value);
    totalSupply.value = decimals.toDecimals(totalSupply.valueExact, contract.decimals);
    totalSupply.save();
  } else {
    let from = fetchAccount(event.params.from);
    let balance = fetchERC20Balance(contract, from);
    balance.valueExact = balance.valueExact.minus(event.params.value);
    balance.value = decimals.toDecimals(balance.valueExact, contract.decimals);
    balance.save();

    ev.from = from.id;
    ev.fromBalance = balance.id;
  }

  if (event.params.to == Address.zero()) {
    let totalSupply = fetchERC20Balance(contract, null);
    totalSupply.valueExact = totalSupply.valueExact.minus(event.params.value);
    totalSupply.value = decimals.toDecimals(totalSupply.valueExact, contract.decimals);
    totalSupply.save();
  } else {
    let to = fetchAccount(event.params.to);
    let balance = fetchERC20Balance(contract, to);
    balance.valueExact = balance.valueExact.plus(event.params.value);
    balance.value = decimals.toDecimals(balance.valueExact, contract.decimals);
    balance.save();

    ev.to = to.id;
    ev.toBalance = balance.id;
  }
  ev.save();
}

export function handleApproval(event: ApprovalEvent): void {
  let contract = fetchERC20(event.address);

  let owner = fetchAccount(event.params.owner);
  let spender = fetchAccount(event.params.spender);
  let approval = fetchERC20Approval(contract, owner, spender);
  approval.valueExact = event.params.value;
  approval.value = decimals.toDecimals(event.params.value, contract.decimals);
  approval.save();
}

export function handleDelegateChanged(event: DelegateChangedEvent): void {
  let ev = new ERC20DelegateChanged(events.id(event));

  let contract = fetchERC20Delegation(event.address);
  let delegator = fetchAccount(event.params.delegator);
  let fromDelegate = fetchAccount(event.params.fromDelegate);
  let toDelegate = fetchAccount(event.params.toDelegate);

  ev.emitter = contract.id;
  ev.transaction = transactions.log(event).id;
  ev.timestamp = event.block.timestamp;
  ev.contract = contract.id;

  ev.delegator = delegator.id;
  ev.fromDelegate = fromDelegate.id;
  ev.toDelegate = toDelegate.id;

  let status = fetchDelegationStatus(contract, delegator);

  ev.current = status.id;
  status.delegate = toDelegate.id;
  status.delegator = delegator.id;

  status.save();
  ev.save();
}
