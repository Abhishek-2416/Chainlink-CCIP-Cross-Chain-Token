// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Script} from "forge-std/Script.sol";
import {Sender} from "../src/Sender.sol";

contract DeploySender is Script {
    function run() external returns(Sender){
        address fujiRouterAddress = vm.envAddress("FUJI_ROUTER_ADDRESS");
        address fujiLinkAddress = vm.envAddress("FUJI_LINK_ADDRESS");
        Sender senderContractAddress = new Sender(fujiRouterAddress,fujiLinkAddress);

        return senderContractAddress;
    }
}