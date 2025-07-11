// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Script} from "forge-std/Script.sol";
import {Receiver} from "../src/Receiver.sol";

contract DeploySender is Script {
    function run() external returns(Receiver){
        address arbRouterAddress = vm.envAddress("ARB_ROUTER_ADDRESS");
        Receiver receiverContractAddress = new Receiver(arbRouterAddress);

        return receiverContractAddress;
    }
}