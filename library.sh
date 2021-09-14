#!/usr/bin/env bash
if [ -z "$1" ]
then
    echo "Must specify host"
    exit 1
fi
case "$1" in
    desktop)
        HOST_MACHINE="desktop-5osreke.broadband"
        HOST_IP_ADDRESS="192.168.1.35"
        COUCHDB_STORAGE_VOLUME="c:/couchdb"
        ZOOKEEPER_STORAGE_VOLUME="c:/zookeeper"
        KAFKA_STORAGE_VOLUME="c:/kafka"
        ;;
    windowsserver)
        HOST_MACHINE="windowsserver.broadband"
        HOST_IP_ADDRESS="192.168.1.28"
        COUCHDB_STORAGE_VOLUME="d:/couchdb"
        ZOOKEEPER_STORAGE_VOLUME="d:/zookeeper"
        KAFKA_STORAGE_VOLUME="d:/kafka"
        ;;
    linuxserver)
        HOST_MACHINE="linuxserver.broadband"
        HOST_IP_ADDRESS="192.168.1.21"
        COUCHDB_STORAGE_VOLUME="/opt/couchdb/data"
        ZOOKEEPER_STORAGE_VOLUME="/opt/zookeeper"
        KAFKA_STORAGE_VOLUME="/opt/kafka"
        ;;
    dotmaticslaptop)
        HOST_MACHINE="uk-bis-lap-301.broadband"
        HOST_IP_ADDRESS="192.168.1.191"
        COUCHDB_STORAGE_VOLUME="c:/couchdb"
        ZOOKEEPER_STORAGE_VOLUME="c:/zookeeper"
        KAFKA_STORAGE_VOLUME="c:/kafka"
        ;;
    *)
        echo "Machine invalid or not found"
        exit 1
        ;;
esac
COUCHDB_USER="admin"
COUCHDB_PASSWORD="xq2um8g0"
COUCHDB_CONTAINER_NAME="couchdb-$1"
ZOOKEEPER_CONTAINER_NAME="zookeeper-$1"
KAFKA_CONTAINER_NAME="kafka-$1"
ALLOW_ANONYMOUS_LOGIN=true
ZOO_SERVER_ID=1
ZOO_SERVERS="$HOST_MACHINE:2888:3888"
KAFKA_BROKER_ID=1
KAFKA_CFG_LISTENERS="PLAINTEXT://:9092"
KAFKA_CFG_ADVERTISED_LISTENERS="PLAINTEXT://$HOST_MACHINE:9092"
KAFKA_CFG_ZOOKEEPER_CONNECT="$HOST_MACHINE:2181"
ALLOW_PLAINTEXT_LISTENER=true
KAFKA_CFG_DELETE_TOPIC_ENABLE=true