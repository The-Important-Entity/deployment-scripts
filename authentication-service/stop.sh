#!/bin/bash
sudo docker ps -f name=auth- -aq | sudo xargs docker rm -f