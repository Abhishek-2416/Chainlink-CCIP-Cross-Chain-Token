#!/usr/bin/env bash
set -euo pipefail

# 1) Hex-encode your message
MSG_HEX=$(printf 'Hello from Fuji Chain via CCIP' | xxd -p -c 256)

# 2) Load your env (must define FUJI_RPC_URL, PRIVATE_KEY, SENDER_ADDR)
source .env

# 3) Call sendMessage(uint64,bytes,bytes)
cast send \
  --rpc-url  "$FUJI_RPC_URL" \
  --private-key "$PRIVATE_KEY" \
  --gas-limit 1_000_000 \
  "$SENDER_ADDRESS" \
  "sendMessage(uint64,bytes,bytes)" \
    3478487238524512106 \
    0x04FB1983e948BfD742f94766613C19927c14652d \
    0x"$MSG_HEX"


