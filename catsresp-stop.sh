#!/usr/bin/env bash
. library.sh
docker stop $(docker ps | grep $CATSRESPONDER_CONTAINER_NAME | awk '{ print $1 }')