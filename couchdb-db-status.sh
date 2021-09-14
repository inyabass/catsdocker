#!/usr/bin/env bash
. library.sh
curl http://$COUCHDB_USER:$COUCHDB_PASSWORD@$HOST_MACHINE:5984/_all_dbs