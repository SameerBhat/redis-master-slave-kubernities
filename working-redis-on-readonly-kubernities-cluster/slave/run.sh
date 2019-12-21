#!/bin/bash
if [[ ${GET_HOSTS_FROM:-dns} == "env" ]]; then
  redis-server /home/linuxbrew/redis.conf --slaveof ${REDIS_MASTER_SERVICE_HOST} 6379
else
  redis-server /home/linuxbrew/redis.conf --slaveof redis-master 6379
fi