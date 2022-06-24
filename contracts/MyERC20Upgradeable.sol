//SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";


contract MyERC20Upgradeable is Initializable, ERC20Upgradeable, OwnableUpgradeable {

    // constructor() ERC20("MyERC20", "MY") {
    // }

    function initialize() external initializer {
        // of node_modules
        __ERC20_init("MyERC20Up", "MTU");
        __Ownable_init();
    }

    function mint(address to, uint amount) external onlyOwner {
        _mint(to, amount);
    }
}