#!/bin/bash
set -e

/zk-docker-entrypoint.sh &
/kafka-docker-entrypoint.sh &

wait $!
