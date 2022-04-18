#!/bin/bash

#git clone git@github.com:The-Important-Entity/frontend-landing.git
#cd frontend-landing
#npm install
#npm run build
#mv build/ ../public
#cd ..
#sudo rm -r frontend-landing

cp -r public nginx/

sudo docker build -t nginx_certbot ./nginx-temp
sudo docker build -t nginx ./nginx
#sudo rm -r public
