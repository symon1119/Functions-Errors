# Functions&Errors
## Description
 Create a smart contract that includes the require(), assert(), and revert() statements.

## Getting Started

### Executing Program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the file icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Converter.sol). Copy and paste the following code into the file:

```
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

```

Once you paste the code, go to SOLIDITY COMPILER to appear in DEPLOY and RUN TRANSACTION to deploy. NOW YOU CAN ENTER THE AMOUNT YOU WANT!

## Authors

Junel Symon Closa Dela Cruz
8210225@ntc.edu.ph


## License

This project is licensed under the MIT License - see the LICENSE.md file for details

