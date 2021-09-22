#!/usr/bin/env bash
. library.sh
if [ -z "$2" ]
then
    echo "Must specify topic"
    exit 1
fi
if [ -z "$3" ]
then
    echo "Must specify number of partitions"
    exit 1
fi
docker exec -it $KAFKA_CONTAINER_NAME kafka-topics.sh --zookeeper $HOST_MACHINE:2181 --topic $2 --alter --partitions $3