#!/usr/bin/env bash
# $1 = Server
docker exec -it kafka-1 kafka-topics.sh --create --zookeeper $1.broadband:2181 --replication-factor 1 --partitions 1 --topic test-request
docker exec -it kafka-1 kafka-topics.sh --create --zookeeper $1.broadband:2181 --replication-factor 1 --partitions 1 --topic test-response