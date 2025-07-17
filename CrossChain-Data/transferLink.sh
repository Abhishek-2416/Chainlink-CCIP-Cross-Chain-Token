#!/bin/zsh

source .env

cast send 0x1790c736f216cE4D8487950eF717Cd5af0b85B0e "transfer(address,uint256)" $SENDER_ADDRESS 10e18 --rpc-url $FUJI_RPC_URL --private-key $PRIVATE_KEY