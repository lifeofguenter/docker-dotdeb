FROM debian:jessie
MAINTAINER 9JKH Dev<dev@9jkh.co.za>

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qq && apt-get install -y -qq --no-install-recommends apt-utils

RUN \
  useradd -d /home/foobar -m -s /bin/bash foobar && \
  echo "deb http://ftp.debian.org/debian jessie main contrib" > /etc/apt/sources.list.d/contrib.list && \
  echo "deb-src http://ftp.debian.org/debian jessie main contrib" >> /etc/apt/sources.list.d/contrib.list

RUN apt-get update -qq && apt-get install -y -qq \
  build-essential \
  devscripts \
  equivs \
  libwww-perl \
  curl \
  wget \
  apt-transport-https \
  java-package
