![ETC Phoenix](Phoenix-Green-Partial.png) 

# Ethereum Classic Smart Contract Repository

This is a repository for deploying an example Ethereum Classic Trademark Registration smart contract.
A Medium guide for building and deploying the smart contract is available [here](https://medium.com/@yazanator).

A version is already deployed on the ETC Blockchain.
In order to test it out, use the following address for Ethereum Classic: `0xef19343bc5Cb97af300CfA9d29b574A33eB81e00`

In MyCrypto.com, paste the following abi.json found on the root project directory into the text area.

This will generate some commands for you to use.

Try `checkTradeMark` from the dropdown and add a trademark to see if it's registered or not.

To register a trademark, select `registerTradeMark` from drop down and pass in the trademark and author name. 
This requires gas to register.

To get back data about a trademark, select `getTradeMarkData` from dropdown and pass in the trademark phrase. 
