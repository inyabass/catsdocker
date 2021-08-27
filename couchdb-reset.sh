#!/usr/bin/env bash
# $1 = machine $2 = disk
docker stop couchdb-1
docker rm couchdb-1
rm -fR /$2/couchdb/*
./couchdb-compose.sh $1
sleep 3
./couchdb-create-dbs.sh $1