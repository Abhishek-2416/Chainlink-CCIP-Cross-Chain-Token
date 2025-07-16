// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Test} from "forge-std/Test.sol";
import {Sender} from "../src/Sender.sol";
import {Receiver} from "../src/Receiver.sol";
import {console} from "forge-std/console.sol";
import {IRouterClient} from "./mocks/MockRouter.sol";
import {DeploySender} from "../script/DeploySender.s.sol";
import {DeployReceiver} from "../script/DeployReceiver.s.sol";
import {LinkTokenInterface} from "./mocks/MockLinkToken.sol";
 

contract TestFlow is Test {
    Sender senderAddress;
    Receiver receiverAddress;

    DeploySender deployer;
    DeployReceiver receiver;
    address owner;

    //Mocks
    IRouterClient router;
    LinkTokenInterface linkToken;

    uint64 destinationChainSelector = 3478487238524512106;

    function setUp() external {
        receiver = new DeployReceiver();
        deployer = new DeploySender();

        senderAddress = deployer.run();
        receiverAddress = receiver.run();

        owner = senderAddress.owner();
    }

    function testTheSendMessageExecutesProperly() external {
        vm.prank(owner);
        senderAddress.sendMessage(destinationChainSelector,address(receiverAddress),"Hello via CCIP");
    }
}