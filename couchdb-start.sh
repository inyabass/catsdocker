#!/usr/bin/env bash
. library.sh
export COUCHDB_USER
export COUCHDB_PASSWORD
docker run -d --name $COUCHDB_CONTAINER_NAME --rm -p 5984:5984 -v $COUCHDB_STORAGE_VOLUME:/opt/couchdb/data -e COUCHDB_USER -e COUCHDB_PASSWORD couchdb:latest