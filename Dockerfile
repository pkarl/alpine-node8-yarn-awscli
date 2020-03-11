FROM mhart/alpine-node:12.16.1 

RUN apk add --no-cache --virtual .build-deps \
  alpine-sdk \
  libffi-dev \
  libressl-dev \
  openssh-client \
  zip \
  groff \
  less \
  mailcap \
  git \
  python2-dev \
  py-pip \
  && pip install --upgrade awsebcli \
  && apk del .build-deps

VOLUME /root/.aws
VOLUME /project
WORKDIR /project
