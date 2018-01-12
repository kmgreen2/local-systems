#!/bin/bash

set -e
CMD="geth --datadir="$ETH_DATA_DIR" --networkid 1337 --nodekey=$ETH_DATA_DIR/boot.key --mine --minerthreads=1 --etherbase=0x0000000000000000000000000000000000000000"

exec sh -c "$CMD"
