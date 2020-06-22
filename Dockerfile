FROM alpine:3.11

MAINTAINER liaoronghui liaoronghui@vip.qq.com

ENV PATH=${PATH}:/opt/zookeeper/bin

ARG ZK_VERSION=3.4.14

WORKDIR /opt/zookeeper

RUN set -ex \
    && apk update \
    && apk add openjdk8-jre bash su-exec \
    && addgroup -g 1000 zookeeper \
    && adduser -u 1000 -G zookeeper -D zookeeper \
    && wget -q http://archive.apache.org/dist/zookeeper/zookeeper-${ZK_VERSION}/zookeeper-${ZK_VERSION}.tar.gz \
    && wget -q http://archive.apache.org/dist/zookeeper/zookeeper-${ZK_VERSION}/zookeeper-${ZK_VERSION}.tar.gz.sha512 \
    && sha512sum -c zookeeper-${ZK_VERSION}.tar.gz.sha512 \
    && tar --no-same-owner --strip-components=1 -xf zookeeper-${ZK_VERSION}.tar.gz \
    && rm -rf /var/cache/apk/* \
        *.xml \
        *.txt \
        *.jar.* \
        *.md \
        zookeeper-client/ \
        zookeeper-contrib \
        zookeeper-docs \
        zookeeper-it \
        zookeeper-jute \
        zookeeper-recipes \
        zookeeper-server \
        dist-maven \
        src \
        bin/*.cmd \
        bin/*.txt \
        zookeeper-${ZK_VERSION}.tar.gz \
        zookeeper-${ZK_VERSION}.tar.gz.sha512

COPY zkOK.sh /opt/zookeeper/bin
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["zkServer.sh","start-foreground"]
