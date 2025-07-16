#!/bin/zsh

source .env

cast send 0x5F679965263b79aBC99a749b304A8aC836eCED32 "sendMessage(uint64,address,string)" 3478487238524512106 0x04FB1983e948BfD742f94766613C19927c14652d "Hello from Fuji Chain via CCIP" --rpc-url $FUJI_RPC_URL --private-key $PRIVATE_KEY --gas-limit 1000000