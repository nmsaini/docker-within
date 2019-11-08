#!/bin/bash

# use the imagename that was just built
IMG=docker-within

# run it interactively if you want to play around
#docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock:ro $IMG


# lauch a container from inside the container that sits in a loop echo date every 5 seconds
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro $IMG docker run -d --name busybox-loop busybox sh -c "while true;do date;sleep 5;done"

# since we launched the busybox from inside with background it should still be running
# check logs first
echo
echo check logs to see if container still running
echo docker logs -f busybox-loop
echo
echo when ready to stop and remove the container
echo docker rm -f busybox-loop
echo
