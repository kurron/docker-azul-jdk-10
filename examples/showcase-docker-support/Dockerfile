# Follows guidance from http://www.projectatomic.io/docs/docker-image-author-guidance/

FROM kurron/docker-azul-jdk-10:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

# Switch to the non-root user and the home directory
USER microservice

# Run the JRE
ENTRYPOINT ["java"]
