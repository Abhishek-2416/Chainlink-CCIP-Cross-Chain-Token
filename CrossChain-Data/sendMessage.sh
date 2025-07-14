source .env

cast send $SENDER_ADDRESS \
  "sendMessage(uint64,address,string)(bytes32)" \
  $DESTINATION_CHAIN_SELECTOR \
  $RECEIVER_ADDRESS "Hello from Sender!" \
  --private-key $PRIVATE_KEY \
  --rpc-url $ANVIL_RPC_URL
