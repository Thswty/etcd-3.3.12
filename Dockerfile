FROM        alpine:3.9.3
ADD         ./etcd-v3.3.12-linux-amd64.tar.gz /opt/
RUN         apk add --update ca-certificates && \
            mv /opt/etcd-v3.3.12-linux-amd64/etcd* /bin/ && \
            rm -Rf /opt/etcd-v3.3.12-linux-amd64* /var/cache/apk/*
VOLUME      /data
EXPOSE      2379 2380 4001 7001
ADD         ./run.sh /bin/run.sh
ENTRYPOINT  ["/bin/run.sh"]
