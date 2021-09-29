#!/bin/bash
sudo docker ps -f name=backend- -aq | sudo xargs docker rm -f