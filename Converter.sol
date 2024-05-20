// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CoinConverter {

  function OldCurrency(uint _amount) public pure returns (uint) {
    // Reject insufficient funds (amount <= 0)
    if (_amount <= 0) {
      revert("Insufficient funding for conversion..");
    }
    
    // Return amount (no change needed)
    return _amount;
  }

  function ExchangeRate(uint _amount) public pure returns (uint) {
    // Ensure valid amount for conversion (less than 1000)
    assert(_amount < 5000);
    
    // Return converted amount (amount * exchange rate) - simulate exchange rate
    return _amount * 2;
  }

  function TransactionFee(uint _amount) public pure returns (uint) {
    // Require divisible amount (fee: 10% - remainder must be 0)
    require(_amount % 20 == 0, "The amount needs to be divided by the transaction cost (10%).");
    
    // Return converted amount after fee (amount - fee)
    return _amount - (_amount / 20);
  }
}
