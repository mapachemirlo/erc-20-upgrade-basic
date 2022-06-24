//SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyERC20 is ERC20, Ownable {

    constructor() ERC20("Myerc20", "MY") {
    }

    function mint(address to, uint amount) external onlyOwner {
        _mint(to, amount);
    }
}