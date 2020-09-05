#!/bin/bash

docker container stop $(docker container ls -q --filter name=my-parse-server)
docker container stop $(docker container ls -q --filter name=my-mongo)

docker rm $(docker ps -aq)

docker volume prune -f 

echo "Removed parse-server and mongo containers and volumes."