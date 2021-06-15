# HW-20-Solidity
## The follwoing three contracts can be deployed on Kovan Testnet.
## 1. AssociateProfitSplitter.sol
#### This contract allows Human Resources to distribute Ether to three associate level employees evenly.   
## 2. TieredProfitSplitter.sol
#### This contract allows to distribute Either at different percentages to the management.
#### The distribution % to CEO, CTO and Bob are 60%, 25% and 15%, respectively.     
## 3. DeferredEquityPlan.sol
#### This contract allows to distribute the total of 1,000 shares with annual distribution of 250 over 4 years for one employee.  
#### To test how the vesting period works, use fastforward function with fakenow = 100 days (The function is commented out at this moment frin line 19 to 22). Replace “now” to “fakenow”. There are 2 “now” to be replaced in this contract.  
## How to use those contracts 
### Step 1: Compile a contract 
#### Click Solidity compiler icon on the left and click Compile button. When it is compiled successfully, you will see a green check mark on the compiler icon.
![](gifs/FileCompiler.gif)

### Step 2: Deploy a contract
#### Click "Deploy and Run Transaction" icon to switch from the Compile panel to the Deploy panel on the left. 
#### Select "Injected Web3" in ENVIRONMENT box, and make sure the right network and account are selected.
#### Click a down allow button to expand the DEPLOY section and enter a recipient’s addresses. Then, click “transact” button. This triggers to start MetaMask. When you see the popup window of MetaMask, click Confirm to deploy the contract on the network.  
![](gifs/Deploy.gif)
### Step 3 Send transactions 
#### Enter the total ETH amount to be sent in “VALUE” box and click "deposit" button under the Deployed Contracts section when using AssociateProfitSplitter.sol and TieredProfitSplitter.sol, or click "distribute" button when using DeferredEquityPlan.sol. It starts MetaMask again. Then, click confirm to send the transaction.  
#### To verify the transaction, look up the address or Transaction hash on Etherscan https://etherscan.io/
![](gifs/Assoc_screen.gif)
#### My Kovan testnet address is "0x9AD9E9d025b088342D0ac468B498498E0028fe9e"
