FROM alpine:latest

LABEL maintainer="Peng Xiao <xiaoquwl@gmail.com>"

RUN apk update && apk upgrade && \
    apk add --no-cache net-snmp-tools && \
    apk add --no-cache openssh-client && \
    apk add --no-cache busybox-extras && \
    apk add --no-cache curl && \
    apk add --no-cache iperf3 && \
    apk add --no-cache bind-tools && \
    apk add --no-cache nmap && \
    apk add --no-cache scanssh

WORKDIR /omd

VOLUME ["/omd"]

CMD []
