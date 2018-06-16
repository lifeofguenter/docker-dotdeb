FROM ubuntu:xenial
MAINTAINER 9JKH Dev<dev@9jkh.co.za>

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qq && apt-get install -y -qq --no-install-recommends apt-utils

RUN \
  useradd -d /home/foobar -m -s /bin/bash foobar
  #echo "deb http://archive.ubuntu.com/ubuntu xenial universe multiverse" > /etc/apt/sources.list.d/contrib.list && \
  #echo "deb-src http://archive.ubuntu.com/ubuntu xenial universe multiverse" >> /etc/apt/sources.list.d/contrib.list && \
  #echo "deb http://us.archive.ubuntu.com/ubuntu/ xenial universe" >> /etc/apt/sources.list.d/contrib.list && \
  #echo "deb-src http://us.archive.ubuntu.com/ubuntu/ xenial universe" >> /etc/apt/sources.list.d/contrib.list && \
  #echo "deb http://us.archive.ubuntu.com/ubuntu/ xenial-updates universe" >> /etc/apt/sources.list.d/contrib.list && \
  #echo "deb-src http://us.archive.ubuntu.com/ubuntu/ xenial-updates universe" >> /etc/apt/sources.list.d/contrib.list && \
  #echo "deb http://us.archive.ubuntu.com/ubuntu/ xenial multiverse" >> /etc/apt/sources.list.d/contrib.list && \
  #echo "deb-src http://us.archive.ubuntu.com/ubuntu/ xenial multiverse" >> /etc/apt/sources.list.d/contrib.list && \
  #echo "deb http://us.archive.ubuntu.com/ubuntu/ xenial-updates multiverse" >> /etc/apt/sources.list.d/contrib.list && \
  #echo "deb-src http://us.archive.ubuntu.com/ubuntu/ xenial-updates multiverse" >> /etc/apt/sources.list.d/contrib.list && \
  #echo "deb http://security.ubuntu.com/ubuntu xenial-security universe" >> /etc/apt/sources.list.d/contrib.list && \
  #echo "deb-src http://security.ubuntu.com/ubuntu xenial-security universe" >> /etc/apt/sources.list.d/contrib.list && \
  #echo "deb http://security.ubuntu.com/ubuntu xenial-security multiverse" >> /etc/apt/sources.list.d/contrib.list && \
  #echo "deb-src http://security.ubuntu.com/ubuntu xenial-security multiverse" >> /etc/apt/sources.list.d/contrib.list

RUN apt-get update -qq && apt-get install -y -qq \
  build-essential \
  devscripts \
  equivs \
  libwww-perl \
  curl \
  wget \
  apt-transport-https \
  java-package \
  xmlstarlet
