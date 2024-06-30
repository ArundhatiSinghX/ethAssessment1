const hre = require("hardhat");

async function main() { 
const ErrorTest = await hre.ethers.getContractFactory("ErrorWorld");
const errorTest = await ErrorTest.deploy();

await errorTest.deployed();

errorTest.on("Deposit", (owner, amount) => {
console.log(`New deposit: ${owner} ${amount} WEI`);
})

errorTest.on("Withdraw", (owner, amount) => {
console.log(`New withdraw: ${owner} ${amount} WEI`);
})

console.log(`Contract deployed to ${errorTest.address}`);
}


main().catch((error) => {
console.error(error);
process.exitCode = 1;
});