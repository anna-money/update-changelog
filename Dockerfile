# Container image that runs your code
FROM alpine:3.10

RUN apk update
RUN apk add curl py3-pip git
RUN curl -sSL https://raw.githubusercontent.com/vaab/gitchangelog/master/src/gitchangelog/gitchangelog.py > /usr/bin/gitchangelog
RUN chmod +x /usr/bin/gitchangelog
RUN pip3 install pystache

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
