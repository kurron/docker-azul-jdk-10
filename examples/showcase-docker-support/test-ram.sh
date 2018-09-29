#!/usr/bin/env bash

# Showcases the JVM's ability to respect Docker's RAM settings

# the JVM will allocate 1/4 of total memory to heap, which should be roughly 128000000
CMD="docker run --interactive \
                --name ram-aware-jdk \
                --rm \
                --tty \
                --memory 512M \
                showcase-docker-support_multi-core-jdk:latest \
                -XX:+PrintFlagsFinal -version"
echo ${CMD}
${CMD} | grep MaxHeapSize
