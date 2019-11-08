# docker-within

This is a proof of concept that I needed for some other project to prove that we can run docker commands from inside a 
container while connecting to the host docker daemon. The docker commands run inside the container are reflected on the host even 
when we remove the parent container (as docker-daemon is the real parent and not the docker-cli).

The key to this is that the docker groupid on the host needs to be replicated inside the container for the permissions to transfer
to the container docker group. If this is NOT done, docker commands will fail with permissions error from inside the container as 
they will not have access to the "/var/run/docker.sock" unix socket.

