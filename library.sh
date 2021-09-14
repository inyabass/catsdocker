#!/usr/bin/env bash
if [ -z "$1" ]
then
    echo "Must specify host"
    exit 1
fi
COUCHDB_USER="admin"
COUCHDB_PASSWORD="xq2um8g0"
COUCHDB_CONTAINER_NAME="couchdb-$1"
ZOOKEEPER_CONTAINER_NAME="zookeeper-$1"
KAFKA_CONTAINER_NAME="kafka-$1"
case "$1" in
    desktop)
        HOST_MACHINE="desktop-5osreke.broadband"
        HOST_IP_ADDRESS="192.168.1.35"
        COUCHDB_STORAGE_VOLUME="c:/couchdb"
        ;;
    windowsserver)
        HOST_MACHINE="windowsserver.broadband"
        HOST_IP_ADDRESS="192.168.1.28"
        COUCHDB_STORAGE_VOLUME="d:/couchdb"
        ;;
    linuxserver)
        HOST_MACHINE="linuxserver.broadband"
        HOST_IP_ADDRESS="192.168.1.21"
        COUCHDB_STORAGE_VOLUME="/opt/couchdb/data"
        ;;
    dotmaticslaptop)
        HOST_MACHINE="uk-bis-lap-301.broadband"
        HOST_IP_ADDRESS="192.168.1.191"
        COUCHDB_STORAGE_VOLUME="c:/couchdb"
        ;;
    *)
        echo "Machine invalid or not found"
        exit 1
        ;;
esac