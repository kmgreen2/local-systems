#!/bin/bash
set -e

CMD="/opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties"

sed -i -r 's/zookeeper.connect=zookeeper:2181/zookeeper.connect=localhost:2181/g' /opt/kafka/config/server.properties

exec $CMD
