#!/usr/bin/env bash
. library.sh
if [ -n "$2" ]
then
   CATSEXECUTOR_CONTAINER_NAME_TMP="$CATSEXECUTOR_CONTAINER_NAME-$2"
else   
   CATSEXECUTOR_CONTAINER_NAME_TMP="$CATSEXECUTOR_CONTAINER_NAME-1"
fi
docker run -it -d --rm --name $CATSEXECUTOR_CONTAINER_NAME_TMP catsexecutor:latest