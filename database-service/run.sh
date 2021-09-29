#!/bin/bash

if [ -z $1 ] || [ -z $2 ] || [ -z $3 ] || [ -z $4 ] || [ -z $5 ] || [ -z $6 ] || [ -z $7 ]
then
      echo "Error: missing command line args"
      exit 1
fi

sudo docker run -d --name db-service-$1 --restart=always -p 600$1:6000 \
-e DB_HOST=$2 \
-e DB_PORT=$3 \
-e DB_USER=$4 \
-e DB_PASS=$5 \
-e DB=$6 \
-e PORT=$7 \
db-service