#!/bin/bash
  
set -e

CMD="geth --datadir="$ETH_DATA_DIR" -verbosity 6 --ipcdisable --port $ETH_PORT --rpcport $ETH_RPC_PORT --networkid 1337 --bootnodes $ETH_BOOT_NODE >> $ETH_LOG_DIR/ethereum.log 2>&1"

exec /bin/sh -c "$CMD"
