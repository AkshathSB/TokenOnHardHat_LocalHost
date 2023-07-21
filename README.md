# Creating a Token on a local network- "HardHat"

This is a Solidity program that creates a token which then can be minted and burnt transfered 

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has three functions mint, burn, transfer, transferfrom where the mint function adds inputted value(token) to your account(using a modifier it is made sure that tokens are minted onlyt to the owners address/contact) whereas, the burn function does removes values from your account (this could be performed for any account), the transfer function helps transfers tokens only from the owners account to another account by specifying the address, the transferfrom function does exactly the same thing except even the from accounts address has to be specified the only difference is the transfer function has a fixed from account(i.e., the owners account). This program helps me to understand the basic coding elements of Solidity such has creating user-defined functions and understanding the language. 

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g.,HardHat_Token.sol). 

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.17" (or another compatible version), and then click on the "Compile HardHat_Token.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "local_hardhat_Token" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the  "mint", "burn", "transfer" and "transferfrom" functions. Click on the "local_hardhat_Token" contract in the left-hand sidebar, and then click on the "mint" & "deploy" function and enter the required inputs (address, uint-value) and also to interact with the "transfer" and "transferfrom" functions have to enter to_address, uint-value in the "transfer" function and in the "transferfrom" function enter the from_address, to_address and the uint-value. Finally, click on the "transact" button to execute the functions.

To deploy the token on the hardhat local network run the "deploy.js" with the command
``` shell
npx hardhat node
```
then run 
``` shell
npx hardhat run scripts/deploy.js
```
and then finally your token would be deployed locally on the hardhat network

## Authors

Akshath.SB  

@akshathbhandiwad2@gmail.com

## License

This project is licensed under the MIT License   
