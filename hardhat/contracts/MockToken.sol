// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockToken is ERC20 {
    
    uint256 constant INITIAL_SUPPLY = 1_000_000;

    constructor() ERC20("MockToken", "MTKN") {
        _mint(msg.sender, INITIAL_SUPPLY*10**decimals());
    }
}