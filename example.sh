#!/bin/bash

cd object-storage
./build.sh
./run.sh 0 25 /home/jscalera/data
./run.sh 1 50 /home/jscalera/data
./run.sh 2 75 /home/jscalera/data
cd ..

cd database
./run.sh jds81799 5432 /home/jscalera/data/pg
cd ..

cd authentication-service
./build.sh
./run.sh 0 192.168.200.2 5432 organization_readonly jds81799 account_data 5000
cd ..