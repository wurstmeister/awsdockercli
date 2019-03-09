FROM releaseworks/awscli:latest

RUN apk add --no-cache docker==18.09.1-r0
RUN apk add --no-cache bash
COPY docker_socket_init /usr/sbin/
RUN chmod 4711 /usr/sbin/docker_socket_init
ENTRYPOINT [""]
CMD docker_socket_init && aws --version && docker version
