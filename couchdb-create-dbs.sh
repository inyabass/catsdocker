#!/usr/bin/env bash
# $1 = Server
curl -X PUT http://admin:xq2um8g0@$1.broadband:5984/_global_changes
curl -X PUT http://admin:xq2um8g0@$1.broadband:5984/_replicator
curl -X PUT http://admin:xq2um8g0@$1.broadband:5984/_users
curl -X PUT http://admin:xq2um8g0@$1.broadband:5984/cats