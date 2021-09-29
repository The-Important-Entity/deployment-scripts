#!/bin/bash

if [ -z $1 ] || [ -z $2 ] || [ -z $3 ] || [ -z $4 ]
then
      echo "Error: missing command line args"
      exit 1
fi

sudo docker run -d --name backend-$1 --restart=always -p 200$1:2000 \
-e DB_SERVICE=$2 \
-e AUTH_SERVICE=$3 \
-e PORT=$4 \
backend