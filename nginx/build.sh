#!/bin/bash

if [ -z $1 ]
then
      echo "Error: missing command line args"
      exit 1
fi

sudo docker build -t nginx .
