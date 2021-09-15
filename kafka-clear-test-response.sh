#!/usr/bin/env bash
. library.sh
docker exec -it $KAFKA_CONTAINER_NAME kafka-configs.sh --bootstrap-server $HOST_MACHINE:9092 --topic test-response --alter --add-config retention.ms=1000
sleep 2
docker exec -it $KAFKA_CONTAINER_NAME kafka-configs.sh --bootstrap-server $HOST_MACHINE:9092 --topic test-response --alter --add-config retention.ms=86400