FROM alpine:3.5

MAINTAINER John <yinzhuan@cisco.com>

RUN apk --no-cache add mosquitto=1.4.10-r2 openssl && \
    mkdir -p /var/lib/mosquitto && \   
    chown -R mosquitto:mosquitto /var/lib/mosquitto


ADD files /etc/mosquitto/

EXPOSE 1883 8883 9001 9883

ADD docker_entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
