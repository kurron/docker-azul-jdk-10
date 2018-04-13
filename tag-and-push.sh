#!/bin/bash

# use the time as a tag
UNIXTIME=$(date +%s)

# docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]
docker tag dockerazuljdk9_azul-jdk:latest kurron/docker-azul-jdk-9:latest
docker tag dockerazuljdk9_azul-jdk:latest kurron/docker-azul-jdk-9:${UNIXTIME}
docker images

# Usage:  docker push [OPTIONS] NAME[:TAG]
docker push kurron/docker-azul-jdk-9:latest
docker push kurron/docker-azul-jdk-9:${UNIXTIME}
