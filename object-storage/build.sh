#!/bin/bash
git clone git@github.com:The-Important-Entity/object-storage.git
cd object-storage
npm install
cd ..
sudo docker build -t obj-node .
sudo rm -r object-storage