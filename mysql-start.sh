#!/usr/bin/env bash
. library.sh
export MYSQL_ROOT_PASSWORD
export MYSQL_USER
export MYSQL_PASSWORD
export MYSQL_DATABASE
docker run -it -d --rm --name $MYSQL_CONTAINER_NAME -p 3306:3306 -v $MYSQL_STORAGE_VOLUME:/var/lib/mysql -e MYSQL_ROOT_PASSWORD -e MYSQL_USER -e MYSQL_PASSWORD -e MYSQL_DATABASE mysql:latest --bind-address=0.0.0.0