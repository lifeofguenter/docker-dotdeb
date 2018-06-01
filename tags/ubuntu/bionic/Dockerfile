FROM ubuntu:bionic
MAINTAINER 9JKH Dev<dev@9jkh.co.za>

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qq && apt-get install -y -qq --no-install-recommends apt-utils

RUN \
  useradd -d /home/foobar -m -s /bin/bash foobar && \
  echo "deb http://archive.ubuntu.com/ubuntu bionic universe multiverse" > /etc/apt/sources.list.d/contrib.list && \
  echo "deb-src http://archive.ubuntu.com/ubuntu bionic universe multiverse" >> /etc/apt/sources.list.d/contrib.list && \
  echo "deb http://us.archive.ubuntu.com/ubuntu/ bionic universe" >> /etc/apt/sources.list.d/contrib.list && \
  echo "deb-src http://us.archive.ubuntu.com/ubuntu/ bionic universe" >> /etc/apt/sources.list.d/contrib.list && \
  echo "deb http://us.archive.ubuntu.com/ubuntu/ bionic-updates universe" >> /etc/apt/sources.list.d/contrib.list && \
  echo "deb-src http://us.archive.ubuntu.com/ubuntu/ bionic-updates universe" >> /etc/apt/sources.list.d/contrib.list && \
  echo "deb http://us.archive.ubuntu.com/ubuntu/ bionic multiverse" >> /etc/apt/sources.list.d/contrib.list && \
  echo "deb-src http://us.archive.ubuntu.com/ubuntu/ bionic multiverse" >> /etc/apt/sources.list.d/contrib.list && \
  echo "deb http://us.archive.ubuntu.com/ubuntu/ bionic-updates multiverse" >> /etc/apt/sources.list.d/contrib.list && \
  echo "deb-src http://us.archive.ubuntu.com/ubuntu/ bionic-updates multiverse" >> /etc/apt/sources.list.d/contrib.list && \
  echo "deb http://security.ubuntu.com/ubuntu bionic-security universe" >> /etc/apt/sources.list.d/contrib.list && \
  echo "deb-src http://security.ubuntu.com/ubuntu bionic-security universe" >> /etc/apt/sources.list.d/contrib.list && \
  echo "deb http://security.ubuntu.com/ubuntu bionic-security multiverse" >> /etc/apt/sources.list.d/contrib.list && \
  echo "deb-src http://security.ubuntu.com/ubuntu bionic-security multiverse" >> /etc/apt/sources.list.d/contrib.list

RUN apt-get update -qq && apt-get install -y -qq \
  build-essential \
  devscripts \
  equivs \
  libwww-perl \
  curl \
  wget \
  apt-transport-https
