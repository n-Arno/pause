FROM alpine:latest

RUN apk add --no-cache curl fio iperf3

COPY tester /usr/local/sbin/tester

ENTRYPOINT ["/bin/sh", "-c", "tail -f /dev/null"]
