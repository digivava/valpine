FROM alpine:3.7
MAINTAINER Valerie Conklin <github.com/digivava>

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

RUN apk --no-cache -U add \
  bash \
  curl \
  git \
  ca-certificates \
  gettext \
  bind-tools \
  make