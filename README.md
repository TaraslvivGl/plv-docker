## Create and prepare docker containers
Script `./create.sh` creates all the necessary docker objects. In case there are already the same names in docker the script "./clean.sh" deletes it.

Docker object names:
* server image: nc_server:v1
* client image: nc_client:v1
* server container: nc_server
* client container: nc_client
* network: create server-client-network

``` 
#./clean.sh #[optinal] only in case there are docker objects with the same names and they can be deleted.
./create.sh #create images, containers, and network for containers
```
## Run
To check the communication between the server and the client please run them in different terminals.
### Run server
```
./run_server.sh
```
When the scrip `./run_server.sh` is run it prints a message with the server IP and port. 
### Run client
```
./run_client.sh
```
When the scrip `./run_client.sh` is run it waits for the input of the server IP and port.
## Clean
```
#./clean.sh #[optinal] just in case you already have images or containers with the same names
```
