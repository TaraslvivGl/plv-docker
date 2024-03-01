#!/bin/bash

#create images
docker image build -t nc_server:v1 server
docker image build -t nc_client:v1 client 

#create containers
docker container run -i -d -t -v $(pwd)/server:/dev/server --name nc_server nc_server:v1
docker container run -i -d -t -v $(pwd)/client:/dev/client --name nc_client nc_client:v1

#network
docker network create server-client-network
docker network disconnect bridge nc_client
docker network disconnect bridge nc_server
docker network connect server-client-network nc_client
docker network connect server-client-network nc_server

#kill containers to be able to run them separetly in different terminals 
docker container kill nc_server
docker container kill nc_client
