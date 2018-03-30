#!/bin/bash
  
set -e

CMD="bootnode --verbosity 6 --nodekey=$ETH_DATA_DIR/boot.key > $ETH_LOG_DIR/bootnode.log 2>&1"

exec sh -c "$CMD"
