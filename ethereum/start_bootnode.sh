#!/bin/bash
  
set -e

CMD="bootnode --nodekey=$ETH_DATA_DIR/boot.key"

exec sh -c "$CMD"
