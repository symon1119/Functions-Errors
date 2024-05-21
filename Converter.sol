// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CoinConverter {

  function OldCurrency(uint _amount) public pure returns (uint) {
    if (_amount <= 0) {
      revert("Insufficient funding for conversion..");
    }
    return _amount;
  }

  function ExchangeRate(uint _amount) public pure returns (uint) {
    assert(_amount < 5000);
    
    return _amount * 2;
  }

  function TransactionFee(uint _amount) public pure returns (uint) {
    require(_amount % 20 == 0, "The amount needs to be divided by the transaction cost (10%).");
    
    return _amount - (_amount / 20);
  }
}
