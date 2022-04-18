#!/bin/bash
sudo docker ps -f name=nginx -aq | sudo xargs docker rm -f