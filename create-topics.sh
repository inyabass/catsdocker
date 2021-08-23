#!/usr/bin/env bash
docker exec -it kafka-1 kafka-topics.sh --create --zookeeper 192.168.1.35:2181 --replication-factor 1 --partitions 1 --topic test-request
docker exec -it kafka-1 kafka-topics.sh --create --zookeeper 192.168.1.35:2181 --replication-factor 1 --partitions 1 --topic test-response