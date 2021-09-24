#!/bin/bash
sudo docker ps -f name=pg -aq | sudo xargs docker rm -f