FROM alpine:3.7
MAINTAINER Valerie Conklin <github.com/digivava>

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

# https://wiki.alpinelinux.org/wiki/Alpine_Linux_package_management#.22apk-tools_is_old.22
RUN apk add --no-cache -U apk-tools@edge

RUN apk --no-cache -U add \
  bash \
  curl \
  git \
  ca-certificates \
  gettext \
  bind-tools \
  make

## jq
ENV JQ_VERSION 1.5
RUN curl -o /usr/local/bin/jq -JsSL https://github.com/stedolan/jq/releases/download/jq-${JQ_VERSION}/jq-linux64 \
  && chmod +x /usr/local/bin/jq
