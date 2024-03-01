#!/bin/bash

echo "Enter server IP:"
read IP

echo "Enter server port:"
read PORT

echo "Connect to $IP:$PORT"
nc $IP $PORT
