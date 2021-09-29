#!/bin/bash
git clone git@github.com:The-Important-Entity/authentication-service.git
cd authentication-service
openssl genrsa -out private.key 2048
openssl rsa -in private.key -outform PEM -pubout -out public.key
npm install
cd ..
sudo docker build -t auth .
sudo rm -r authentication-service