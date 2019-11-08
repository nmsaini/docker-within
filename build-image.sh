#!/bin/bash

# get the docker group-id. This is used to create a group inside the container
GID=$(grep docker /etc/group| awk -F: '{ print $3 }')

# select a imagename
IMG=docker-within

# pass the params to the docker build
docker build --build-arg GID=$GID -t $IMG .

