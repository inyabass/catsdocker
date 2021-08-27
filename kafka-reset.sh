#!/usr/bin/env bash
# $1 = machine $2 = disk
docker stop kafka-1
docker rm kafka-1
docker stop zookeeper-1
docker rm zookeeper-1
rm -fR /$2/zookeeper/*
rm -fR /$2/kafka/*
./kafka-compose.sh $1
sleep 3
./kafka-create-topics.sh $1