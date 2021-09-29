#!/bin/bash
sudo docker ps -f name=db-service -aq | sudo xargs docker rm -f