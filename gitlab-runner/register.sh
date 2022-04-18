#!/bin/bash

if [ -z $1 ]
then
    echo "Error: missing command line args"
    exit 1
fi

docker exec -it gitlab-runner gitlab-runner register \
  --non-interactive \
  --executor "docker" \
  --docker-image docker:latest \
  --url "https://gitlab.joescalera.com" \
  --registration-token $1 \
  --description "main runner" \
  --maintenance-note "This runner is on noah's server" \
  --tag-list "main,iso" \
  --run-untagged="false" \
  --locked="false" \
  --access-level="not_protected" \
  --docker-volumes="/var/run/docker.sock:/var/run/docker.sock" \
  --docker-privileged