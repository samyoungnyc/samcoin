pragma solidity ^0.4.11;

import 'zeppelin-solidity/contracts/token/MintableToken.sol';

contract SamCoin is MintableToken {
	string public name = "SAM COIN";
	string public symbol = "SAM";
	uint256 public decimals = 18;
}