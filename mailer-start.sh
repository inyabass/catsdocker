#!/usr/bin/env bash
. library.sh
export MAILNAME
export RELAY_NETWORKS
docker run -d --name $MAILER_CONTAINER_NAME --rm -p 25:25 -e MAILNAME -e RELAY_NETWORKS namshi/smtp:latest