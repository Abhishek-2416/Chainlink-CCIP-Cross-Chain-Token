#!/bin/zsh

source .env

cast send 0x0b9d5D9136855f6FEc3c0993feE6E9CE8a297846 "transfer(address,uint256)" $SENDER_ADDRESS 2e18 --rpc-url $FUJI_RPC_URL --private-key $PRIVATE_KEY