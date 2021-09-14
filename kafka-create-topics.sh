#!/usr/bin/env bash
. library.sh
docker exec -it $KAFKA_CONTAINER_NAME kafka-topics.sh --create --zookeeper $HOST_MACHINE:2181 --replication-factor 1 --partitions 1 --topic test-request
docker exec -it $KAFKA_CONTAINER_NAME kafka-topics.sh --create --zookeeper $HOST_MACHINE:2181 --replication-factor 1 --partitions 1 --topic test-response
sleep 2
docker exec -it $KAFKA_CONTAINER_NAME kafka-configs.sh --bootstrap-server $HOST_MACHINE:9092 --topic test-request --alter --add-config retention.ms=86400
docker exec -it $KAFKA_CONTAINER_NAME kafka-configs.sh --bootstrap-server $HOST_MACHINE:9092 --topic test-response --alter --add-config retention.ms=86400