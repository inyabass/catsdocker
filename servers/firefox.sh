#!/usr/bin/env bash
docker run --name firefox-server -d --rm --shm-size="2g" -p 4444:4444 -p 5900:5900 selenium/standalone-firefox-debug