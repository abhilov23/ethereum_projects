//SPDX-License-Identifier: MIT
import "forge-std/Script.sol";
import {SimpleStorage} from  "../src/SimpleStorage.sol";


pragma solidity ^0.8.18;

contract DeploySimpleStorage is Script{
    function run() external returns (SimpleStorage){
        vm.startBroadcast(); //anything we need to deploy will be store here
        SimpleStorage simpleStorage = new SimpleStorage(); //new keyword will deploy the smart contract
        vm.stopBroadcast();
        return simpleStorage;
    }
}
