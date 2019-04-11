# etcd-3.3.12
etcd for docker

### run command
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
