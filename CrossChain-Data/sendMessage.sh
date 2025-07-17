#!/bin/zsh

source .env

cast send 0x1790c736f216cE4D8487950eF717Cd5af0b85B0e "sendMessage(uint64,address,string)" 16015286601757825753 0xa7298C12C218edd349d10e2d545fa2Aa9614E3e5 "Hello from Fuji Chain via CCIP" --rpc-url $FUJI_RPC_URL --private-key $PRIVATE_KEY --gas-limit 1000000