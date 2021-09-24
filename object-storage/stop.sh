#!/bin/bash
sudo docker ps -f name=obj- -aq | sudo xargs docker rm -f