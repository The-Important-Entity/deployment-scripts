#!/bin/bash
git clone git@github.com:The-Important-Entity/backend-landing.git
cd backend-landing
npm install

git clone git@github.com:The-Important-Entity/frontend-landing.git
cd frontend-landing
npm install
npm run build
mv build/ ../public
cd ..
sudo rm -r frontend-landing

cd ..
sudo docker build -t backend .
sudo rm -r backend-landing