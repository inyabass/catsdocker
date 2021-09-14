#!/usr/bin/env bash
. library.sh
export ALLOW_ANONYMOUS_LOGIN
export ZOO_SERVER_ID
export ZOO_SERVERS
docker run -d --name $ZOOKEEPER_CONTAINER_NAME --rm -p 2181:2181 -p 2888:2888 -p 3888:3888 -p 8081:8080 -v $ZOOKEEPER_STORAGE_VOLUME:/bitnami/zookeeper -e ALLOW_ANONYMOUS_LOGIN -e ZOO_SERVER_ID -e ZOO_SERVERS bitnami/zookeeper:latest