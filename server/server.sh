#!/bin/bash
if [ $# -eq 0 ];
then
	echo "missed port parameter" 
	exit 0
fi

echo "Running server on port $(ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{print $1}'):$1" 
nc -l $1 |  while read data; do
	echo "$data"
done

