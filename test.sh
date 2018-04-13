#!/bin/bash



CMD="docker run --cpus 1 \
                --interactive \
                --name zulu-test \
                --rm \
                --tty \
                dockerazuljdk10_azul-jdk:latest"
echo $CMD
$CMD
