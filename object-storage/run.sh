#!/bin/bash

if [ -z $1 ] || [ -z $2 ] || [ -z $3 ]
then
      echo "Error: missing command line args"
      exit 1
fi

sudo docker run -d --name obj-$1 --restart=always -p 400$1:4000 -p 300$1:3000 \
-v $3:/data \
-e DHT_TABLESIZE=1000000 \
-e DHT_ID_MAX=100 \
-e DHT_DATA_DIR=/data/dht \
-e OBJ_DATA_DIR=/data/obj \
-e DHT_PORT=3000 \
-e OBJ_PORT=4000 \
-e HOST=192.168.200.2 \
-e DHT_ID=$2 \
-e AUTH=http://192.168.200.2:5000 \
obj-node