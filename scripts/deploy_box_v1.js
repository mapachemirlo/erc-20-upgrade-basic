const { ethers, upgrades} = require("hardhat");

async function main() {
    const Box = await ethers.getContractFactory("Box");
    
    // Contract to deploy and function with parameter
    const box = await upgrades.deployProxy(Box, [42], {
        initializer: "initialize",
    });

    await box.deployed();

    console.log("Box deployed to: ", box.address);

}

main()