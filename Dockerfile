FROM amazon/aws-cli

RUN amazon-linux-extras install docker -y
RUN yum install -y sudo
COPY docker_socket_init /usr/sbin/
RUN echo "ALL ALL=(ALL) NOPASSWD: /usr/sbin/docker_socket_init" >> /etc/sudoers
RUN chmod 700 /usr/sbin/docker_socket_init
ENTRYPOINT [""]
CMD sudo docker_socket_init && aws --version && docker version
