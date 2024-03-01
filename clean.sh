#!/bin/bash

docker container rm -f nc_server nc_client
docker network rm server-client-network
docker image rm -f nc_server:v1 nc_client:v1
