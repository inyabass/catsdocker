#!/usr/bin/env bash
# $1 = Server
docker-compose -f couchdb-$1.yml up -d