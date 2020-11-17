#!/bin/sh

if [ "$1" = 'redis-cluster' ]; then
    sleep 10
    echo "yes" | redis-cli --cluster create -p 7002 192.168.143.99:7002 192.168.143.99:7001 192.168.143.99:7000 --cluster-replicas 1
    echo "DONE"
else
  exec "$@"
fi
