pragma solidity ^0.4.11;

import './SamCoin.sol';
import 'zeppelin-solidity/contracts/crowdsale/Crowdsale.sol';

contract SamCoinCrowdSale is Crowdsale {

	function SamCoinCrowdSale(uint256 _startBlock, uint256 _endBlock, uint256 _rate, address _wallet) Crowdsale(_startBlock, _endBlock, _rate, _wallet) {
	}

	// CREATES THE TOKEN TO BE SOLD
	// OVERRIDE THIS METHOD TO HAVE CROWDSALE OF A SPECIFIC MintableToken TOKEN

	function createTokenContract() internal returns (MintableToken) {
		return new SamCoin();
	}
}