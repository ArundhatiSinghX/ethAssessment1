# Functions and Errors ETH + AVAX Challenge

For this project, we write a smart contract that implements the require(), assert() and revert() statements.
After cloning the github, you will want to do the following to get the code running on your computer.

1. Inside the project directory, in the terminal type: `npm i`
2. Open two additional terminals in your VS code
3. In the second terminal type: `npx hardhat node`
4. In the third terminal, type: `npx hardhat run --network localhost scripts/deploy1.js`
5. Back in the first terminal, type: `npx hardhat console --network localhost`
6. Then we'll use this command to attach our smart contract to our console: 
   `const myerrors = await (await ethers.getContractFactory("ErrorWorld")).attach("0x5FbDB2315678afecb367f032d93F642f64180aa3")`
   
Once the contract is attached, you can go ahead and call the smart contract functions!

Here is an example you can run using our hardhat provided accounts:

  1. `await myerrors.myRevert("0x15d34AAf54267DB7D7c367839AAf71A00a2C6A65,3)"`
  2. `await myerrors.myRequire("0x15d34AAf54267DB7D7c367839AAf71A00a2C6A65.9)"`
  3. `await myerrors.myRequire("0x15d34AAf54267DB7D7c367839AAf71A00a2C6A65", 0)"`
  4. `await myerrors.myAssert()`


 
