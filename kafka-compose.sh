#!/usr/bin/env bash
# $1 = Server
docker-compose -f kafka-$1.yml up -d