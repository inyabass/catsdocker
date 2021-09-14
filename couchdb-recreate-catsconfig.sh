#!/usr/bin/env bash
. library.sh
curl -X DELETE http://$COUCHDB_USER:$COUCHDB_PASSWORD@$HOST_MACHINE:5984/catsconfig
sleep 1
curl -X PUT http://$COUCHDB_USER:$COUCHDB_PASSWORD@$HOST_MACHINE:5984/catsconfig