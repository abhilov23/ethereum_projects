//SPDX-License-Identifier: MIT


pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";

import {OurToken} from "../src/ERC20.sol";

contract DeployOurToken is Script{
    uint256 public constant initialSupply = 10000 ether;

    function run() external{
        vm.startBroadcast();
        new OurToken(initialSupply);
        vm.stopBroadcast();
    }
}