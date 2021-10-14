#!/usr/bin/env bash
echo Starting zookeeper
./zookeeper-start.sh $1
sleep 2
echo Starting kafka
./kafka-start.sh $1
echo Starting mysql
./mysql-start.sh $1
echo Starting mailer
./mailer-start.sh $1
sleep 5
echo Starting catsapi
./catsapi-start.sh $1
echo Starting catsexec
./catsexec-start.sh $1
echo Starting catsresp
./catsresp-start.sh $1