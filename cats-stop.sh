#!/usr/bin/env bash
echo Stopping catsapi
./catsapi-stop.sh $1
echo Stopping catsexec
./catsexec-stop.sh $1
echo Stopping catsresp
./catsresp-stop.sh $1
echo Stopping mysql
./mysql-stop.sh $1
echo Stopping mailer
./mailer-stop.sh $1
echo Stopping kafka
./kafka-stop.sh $1
sleep 2
echo Stopping zookeeper
./zookeeper-stop.sh $1