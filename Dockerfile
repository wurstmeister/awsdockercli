FROM releaseworks/awscli:latest

RUN apk add --no-cache docker==18.09.1-r0
RUN apk add --no-cache bash
RUN apk add --no-cache sudo
COPY docker_socket_init /usr/sbin/
RUN echo "ALL ALL=(ALL) NOPASSWD: /usr/sbin/docker_socket_init" >> /etc/sudoers
RUN chmod 700 /usr/sbin/docker_socket_init
ENTRYPOINT [""]
CMD sudo docker_socket_init && aws --version && docker version
