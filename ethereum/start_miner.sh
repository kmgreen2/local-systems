#!/bin/bash

set -e

ETH_BOOT_NODE=""
NUM_TRIES=0

while [[ -z $ETH_BOOT_NODE ]]; do
    ETH_BOOT_NODE=`curl http://ethereum-boot.ethereum.svc.cluster.local:80`
    if (( NUM_TRIES > 3 )); then
        echo "Could not connect to the bootstrap server: ethereum-boot.ethereum.svc.cluster.local:80"
        exit 1
    fi
    let NUM_TRIES=${NUM_TRIES}+1
done

CMD="geth --datadir="$ETH_DATA_DIR" --networkid 1337 --bootnodes $ETH_BOOT_NODE --mine --minerthreads=1 --etherbase=0x0000000000000000000000000000000000000000 > $ETH_LOG_DIR/miner.log 2>&1"

exec sh -c "$CMD"
