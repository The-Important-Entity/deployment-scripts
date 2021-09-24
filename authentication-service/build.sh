#!/bin/bash
git clone git@github.com:The-Important-Entity/authentication-service.git
cd authentication-service
npm install
cd ..
sudo docker build -t auth .
sudo rm -r authentication-service