FROM releaseworks/awscli:latest

RUN apk add --no-cache docker==18.09.1-r0

ENTRYPOINT [""]
CMD aws --version && docker version
