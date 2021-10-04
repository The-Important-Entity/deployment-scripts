#!/bin/bash
git clone git@github.com:The-Important-Entity/backend-landing.git
cd backend-landing
npm install

cd ..
sudo docker build -t backend .
sudo rm -r backend-landing