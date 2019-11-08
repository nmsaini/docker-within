FROM ubuntu:bionic

ARG DOCKERGID=999
ARG USER=random

RUN useradd $USER && groupadd -g ${DOCKERGID} docker && \
    usermod -aG docker $USER
USER $USER
CMD ["bash"]
