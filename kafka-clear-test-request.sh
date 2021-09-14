#!/usr/bin/env bash
docker exec -it kafka kafka-configs.sh --bootstrap-server desktop-5osreke.broadband:9092 --topic test-request --alter --add-config retention.ms=1000
sleep 2
docker exec -it kafka kafka-configs.sh --bootstrap-server desktop-5osreke.broadband:9092 --topic test-request --alter --add-config retention.ms=86400