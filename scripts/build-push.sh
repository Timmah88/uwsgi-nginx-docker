#!/usr/bin/env bash

set -e

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker-compose -f docker-compose.build.yml build $NAME

docker-compose -f docker-compose.build.yml push $NAME
