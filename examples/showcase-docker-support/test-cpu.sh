#!/usr/bin/env bash

# Showcases the JVM's ability to respect Docker's RAM settings

# Set the CPU limits in terms of shares, which is what AWS does.
# Type Runtime.getRuntime().availableProcessors() to show 2 cores have been allocated
# Type /exit to quit jshell
CMD="docker run --interactive \
                --name cpu-aware-jdk \
                --rm \
                --tty \
                --cpu-shares 2048 \
                --entrypoint jshell \
                showcase-docker-support_multi-core-jdk:latest"
echo ${CMD}
${CMD}
