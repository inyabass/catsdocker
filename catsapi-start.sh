#!/usr/bin/env bash
. library.sh
docker run -it -d --rm --name $CATSAPI_CONTAINER_NAME -p 8080:8080 catsapi:latest