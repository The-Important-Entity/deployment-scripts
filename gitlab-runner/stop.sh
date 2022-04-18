#!/bin/bash
sudo docker ps -f name=gitlab-runner -aq | sudo xargs docker rm -f