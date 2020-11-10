FROM docker:stable
MAINTAINER Thomas Combe
LABEL version="1.0"
LABEL description="Docker with Docker-compose"

RUN apk update && apk upgrade
RUN apk add curl jq python3 python3-dev build-base libffi-dev libressl-dev gettext
RUN curl -O https://bootstrap.pypa.io/get-pip.py
RUN python3 get-pip.py
RUN pip install docker-compose