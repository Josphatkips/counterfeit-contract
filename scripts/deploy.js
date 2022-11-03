

const { ethers } = require("hardhat");

async function main() {
 
  const contract = await ethers.getContractFactory("ItemContract");

 
  const deployedContract = await contract.deploy();

  // wait for the contract to deploy
  await deployedContract.deployed();

  // print the address of the deployed contract
  console.log("Contract address:", deployedContract.address);
}

// Call the main function and catch if there is any error
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });