#!/bin/bash

cd object-storage
./build.sh
./run.sh 0 25 /mnt/dcimages/data
./run.sh 1 50 /mnt/dcimages/data
./run.sh 2 75 /mnt/dcimages/data
cd ..

cd database
./run.sh jds81799 5432 /mnt/dcimages/data/pg
cd ..

cd database-service
./build.sh
./run.sh 0 192.168.1.15 5432 postgres jds81799 account_data 6000
cd ..

cd authentication-service
./build.sh
./run.sh 0 http://192.168.1.15:6000 5000
cd ..

# cd backend-landing
# ./build.sh
# ./run.sh 0 http://192.168.1.15:6000 http://192.168.1.15:5000 2000
