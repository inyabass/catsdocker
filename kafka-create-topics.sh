#!/usr/bin/env bash
docker exec -it kafka kafka-topics.sh --create --zookeeper desktop-5osreke.broadband:2181 --replication-factor 1 --partitions 1 --topic test-request
docker exec -it kafka kafka-topics.sh --create --zookeeper desktop-5osreke.broadband:2181 --replication-factor 1 --partitions 1 --topic test-response
sleep 2
docker exec -it kafka kafka-configs.sh --bootstrap-server desktop-5osreke.broadband:9092 --topic test-request --alter --add-config retention.ms=86400
docker exec -it kafka kafka-configs.sh --bootstrap-server desktop-5osreke.broadband:9092 --topic test-response --alter --add-config retention.ms=86400