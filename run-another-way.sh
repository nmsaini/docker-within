#!/bin/bash

# build the docker-compose image
docker-compose build --build-arg DOCKERGID=$(stat -c '%g' /var/run/docker.sock) app

# run the image in the background so you can run docker commonds interactively
docker-compose up -d


# interactive commands
echo
echo run docker commands from inside the container
docker-compose exec app bash

echo shutdown
# shutdown
docker-compose down

