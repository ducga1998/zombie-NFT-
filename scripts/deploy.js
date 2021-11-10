// scripts/deploy.js
async function main () {
  // We get the contract to deploy
  const DucToken = await ethers.getContractFactory('DucToken');
  console.log('Deploying Box...');
  const ducToken = await DucToken.deploy();
  await ducToken.deployed();
  console.log('Box deployed to:', ducToken.address);
}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });