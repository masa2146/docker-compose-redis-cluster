#!/bin/sh

if [ "$1" = 'redis-cluster' ]; then
    sleep 10
    echo "yes" | redis-cli --cluster create -p 7000 173.17.0.2:7000 173.17.0.3:7001 173.17.0.4:7002 173.17.0.5:7003 173.17.0.6:7004 173.17.0.7:7005 --cluster-replicas 1
    # ruby /redis/src/redis-trib.rb create --replicas 1 173.17.0.2:7000 173.17.0.3:7001 173.17.0.4:7002 173.17.0.5:7003 173.17.0.6:7004 173.17.0.7:7005 

    # redis-cli --cluster create -p 700 173.17.0.2:7000 173.17.0.3:7001 173.17.0.4:7002 173.17.0.5:7003 173.17.0.6:7004 173.17.0.7:7005 --cluster-replicas 1
    echo "DONE"
else
  exec "$@"
fi
