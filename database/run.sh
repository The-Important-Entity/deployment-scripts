#!/bin/bash
# deploy postgres in a docker container

if [ -z $1 ] || [ -z $2 ] || [ -z $3 ]
then
      echo "Error: missing command line args"
      exit 1
fi

sudo docker pull postgres
sudo docker run -d --name pg \
-v $3:/var/lib/postgresql/data \
-e POSTGRES_PASSWORD=$1 \
-e PGDATA=/var/lib/postgresql/data/pgdata \
-p $2:5432 \
postgres

sudo docker cp ./init.sql pg:/docker-entrypoint-initdb.d/init.sql
sudo docker cp ./testorg.sql pg:/docker-entrypoint-initdb.d/testorg.sql