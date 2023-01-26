const hre = require("hardhat");

async function main() {

  const Wallat = await hre.ethers.getContractFactory("Wallat");
  const wallat = await Wallat.deploy()
  await wallat.deployed()

  console.log(
    `Wallat is deployed to ${wallat.address}`
  );
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
