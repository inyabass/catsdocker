#!/usr/bin/env bash
. library.sh
export MAILNAME
docker run -d --name $MAILER_CONTAINER_NAME --rm -p 25:25 -e MAILNAME namshi/smtp:latest