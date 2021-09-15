#!/usr/bin/env bash
HOST_MACHINE_DESKTOP="desktop-5osreke.broadband"
HOST_MACHINE_WINDOWSSERVER="windowsserver.broadband"
HOST_MACHINE_LINUXSERVER="linuxserver.broadband"
HOST_MACHINE_DOTMATICSLAPTOP="uk-bis-lap-301.broadband"
HOST_MACHINE_DESKTOP_IP_ADDRESS="192.168.1.35"
HOST_MACHINE_WINDOWSSERVER_IP_ADDRESS="192.168.1.28"
HOST_MACHINE_LINUXSERVER_IP_ADDRESS="192.168.1.21"
HOST_MACHINE_DOTMATICSLAPTOP_IP_ADDRESS="192.168.1.191"
if [ -z "$1" ]
then
    echo "Must specify host"
    exit 1
fi
case "$1" in
    desktop)
        HOST_MACHINE="$HOST_MACHINE_DESKTOP"
        HOST_IP_ADDRESS="$HOST_MACHINE_DESKTOP_IP_ADDRESS"
        COUCHDB_STORAGE_VOLUME="c:/couchdb"
        ZOOKEEPER_STORAGE_VOLUME="c:/zookeeper"
        ZOO_SERVER_ID_ENSEMBLE=3
        ZOO_SERVERS_ENSEMBLE=$HOST_MACHINE_LINUXSERVER:2888:3888,$HOST_MACHINE_WINDOWSSERVER:2888:3888,0.0.0.0:2888:3888
        KAFKA_STORAGE_VOLUME="c:/kafka"
        ;;
    windows)
        HOST_MACHINE="$HOST_MACHINE_WINDOWSSERVER"
        HOST_IP_ADDRESS="$HOST_MACHINE_WINDOWSSERVER_IP_ADDRESS"
        COUCHDB_STORAGE_VOLUME="f:/couchdb"
        ZOOKEEPER_STORAGE_VOLUME="f:/zookeeper"
        ZOO_SERVER_ID_ENSEMBLE=2
        ZOO_SERVERS_ENSEMBLE=$HOST_MACHINE_LINUXSERVER:2888:3888,0.0.0.0:2888:3888,$HOST_MACHINE_DESKTOP:2888:3888
        KAFKA_STORAGE_VOLUME="f:/kafka"
        ;;
    linux)
        HOST_MACHINE="$HOST_MACHINE_LINUXSERVER"
        HOST_IP_ADDRESS="$HOST_MACHINE_LINUXSERVER_IP_ADDRESS"
        COUCHDB_STORAGE_VOLUME="/mnt/storage/couchdb"
        ZOOKEEPER_STORAGE_VOLUME="/mnt/storage/zookeeper"
        ZOO_SERVER_ID_ENSEMBLE=1
        ZOO_SERVERS_ENSEMBLE=0.0.0.0:2888:3888,$HOST_MACHINE_WINDOWSSERVER:2888:3888,$HOST_MACHINE_DESKTOP:2888:3888
        KAFKA_STORAGE_VOLUME="/mnt/storage/kafka"
        ;;
    dotmatics)
        HOST_MACHINE="$HOST_MACHINE_DOTMATICSLAPTOP"
        HOST_IP_ADDRESS="$HOST_MACHINE_DOTMATICSLAPTOP_IP_ADDRESS"
        COUCHDB_STORAGE_VOLUME="c:/couchdb"
        ZOOKEEPER_STORAGE_VOLUME="c:/zookeeper"
        KAFKA_STORAGE_VOLUME="c:/kafka"
        ;;
    *)
        echo "Host invalid or not found"
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