#!/bin/bash

if [ -z $1 ] || [ -z $2 ] || [ -z $3 ]
then
      echo "Error: missing command line args"
      exit 1
fi

sudo docker run -d --name auth-$1 --restart=always -p 500$1:5000 \
-e DB_SERVICE=$2 \
-e PORT=$3 \
auth