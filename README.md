# etcd-3.3.12
etcd:v3.3.12 for docker

### Useage
```
docker run \
  -d \
  -p 2379:2379 \
  -p 2380:2380 \
  -p 4001:4001 \
  -p 7001:7001 \
  -v /opt/data:/data \
  --name etcd-local \
  etcd:3.3.12 \
  -name etcd-local \
  -discovery=https://discovery.etcd.io/<token> \
  -advertise-client-urls http://0.0.0.0:4001 \
  -initial-advertise-peer-urls http://0.0.0.0:7001
```

- The easiest way to get etcd is to use one of the pre-built release binaries which are available for OSX, Linux, Windows, and Docker on the [release page](https://github.com/etcd-io/etcd/releases).
