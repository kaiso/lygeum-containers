FROM adoptopenjdk/openjdk11-openj9:x86_64-alpine-jre-11.0.6_10_openj9-0.18.1

ENV LYGEUM_VERSION=1.1.0
ENV LYGEUM_BINARY=lygeum-server-${LYGEUM_VERSION}.jar
ENV LANG en_US.UTF-8
ENV LYGEUM_DIST=https://github.com/kaiso/lygeum/releases/download/v${LYGEUM_VERSION}/${LYGEUM_BINARY}

RUN addgroup -S lygeum && adduser -S lygeum -G lygeum

USER root
RUN apk update && apk add --no-cache curl bash
RUN mkdir /opt/app
ADD tools /opt/tools
RUN /opt/tools/install-lygeum.sh

USER lygeum
EXPOSE 5000
ENTRYPOINT ["/opt/tools/docker-entrypoint.sh"]
CMD ["--server.address=0.0.0.0"]