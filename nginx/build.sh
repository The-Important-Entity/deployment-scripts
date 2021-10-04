#!/bin/bash

git clone git@github.com:The-Important-Entity/frontend-landing.git
cd frontend-landing
npm install
npm run build
mv build/ ../public
cd ..
sudo rm -r frontend-landing

sudo docker build -t nginx .
#sudo rm -r public
