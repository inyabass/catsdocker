#!/usr/bin/env bash
docker stop kafka-1
docker rm kafka-1
docker stop zookeeper-1
docker rm zookeeper-1
rm -fR /c/zookeeper/*
rm -fR /c/kafka/*
./kafka.sh $1
sleep 1
./create-topics.sh