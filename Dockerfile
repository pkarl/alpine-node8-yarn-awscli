FROM mhart/alpine-node:8.15.1

RUN apk -v --no-cache add \
  python \
  zip \
  py-pip \
  openssh-client \
  groff \
  less \
  mailcap \
  git \
  && \
  pip install --upgrade awsebcli

VOLUME /root/.aws
VOLUME /project
WORKDIR /project
