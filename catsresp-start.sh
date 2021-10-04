#!/usr/bin/env bash
. library.sh
if [ -n "$2" ]
then
   CATSRESPONDER_CONTAINER_NAME = "$CATSRESPONDER_CONTAINER_NAME-$2"
else   
   CATSRESPONDER_CONTAINER_NAME = "$CATSRESPONDER_CONTAINER_NAME-1"
fi
docker run -it -d --rm --name $CATSRESPONDER_CONTAINER_NAME catsresponder:latest