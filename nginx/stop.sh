#!/bin/bash
#sudo docker ps -f name=temp_certbot -aq | sudo xargs docker rm -f
sudo docker ps -f name=nginx-temp -aq | sudo xargs docker rm -f