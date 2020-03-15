#!/bin/bash
docker build -t signalk-server-node .
docker run --name signalk-server-node --entrypoint /home/node/signalk/bin/signalk-server signalk-server-node &
sleep 10
mkdir -p $PWD/../signalk_conf
docker cp signalk-server-node:/home/node/.signalk/. $PWD/../signalk_conf
docker stop signalk-server-node
docker rm signalk-server-node
docker-compose up -d
