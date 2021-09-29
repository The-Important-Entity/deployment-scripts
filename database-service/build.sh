#!/bin/bash
git clone git@github.com:The-Important-Entity/database-service.git
cd database-service
npm install
cd ..
sudo docker build -t db-service .
sudo rm -r database-service