const { ethers, upgrades} = require("hardhat");

// Proxy contract
const PROXY = "0x60a9BA264C24b903E67630A8723535c0996A4dA2";

async function main() {

    const BoxV2 = await ethers.getContractFactory("BoxV2");

    await upgrades.upgradeProxy(PROXY, BoxV2);

    console.log("Box upgraded");
    
}

main();