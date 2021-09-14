#!/usr/bin/env bash
export ALLOW_ANONYMOUS_LOGIN=true
export ZOO_SERVER_ID=1
export ZOO_SERVERS="desktop-5osreke.broadband:2888:3888"
docker run -d --name zookeeper --rm -p 2181:2181 -p 2888:2888 -p 3888:3888 -p 8080:8080 -v c:/zookeeper:/bitnami/zookeeper -e ALLOW_ANONYMOUS_LOGIN -e ZOO_SERVER_ID -e ZOO_SERVERS bitnami/zookeeper:latest