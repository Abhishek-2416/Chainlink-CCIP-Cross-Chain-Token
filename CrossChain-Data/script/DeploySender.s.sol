// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Script} from "forge-std/Script.sol";
import {Sender} from "../src/Sender.sol";

contract DeploySender is Script {
    function run() external returns(Sender){
        // address fujiRouterAddress = vm.envAddress("FUJI_ROUTER_ADDRESS");
        // address fujiLinkAddress = vm.envAddress("FUJI_LINK_ADDRESS");

        vm.startBroadcast();
        Sender senderContractAddress = new Sender(0xF694E193200268f9a4868e4Aa017A0118C9a8177,0x0b9d5D9136855f6FEc3c0993feE6E9CE8a297846);
        vm.stopBroadcast();

        return senderContractAddress;
    }
}