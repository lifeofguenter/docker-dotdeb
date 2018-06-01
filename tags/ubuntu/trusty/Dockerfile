FROM ubuntu:trusty
MAINTAINER 9JKH Dev<dev@9jkh.co.za>

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qq && apt-get install -y -qq --no-install-recommends apt-utils

RUN \
  useradd -d /home/foobar -m -s /bin/bash foobar \
  echo "deb http://archive.ubuntu.com/ubuntu trusty universe multiverse" > /etc/apt/sources.list.d/contrib.list \
  echo "deb-src http://archive.ubuntu.com/ubuntu trusty universe multiverse" >> /etc/apt/sources.list.d/contrib.list \
  echo "deb http://us.archive.ubuntu.com/ubuntu/ trusty universe" >> /etc/apt/sources.list.d/contrib.list \
  echo "deb-src http://us.archive.ubuntu.com/ubuntu/ trusty universe" >> /etc/apt/sources.list.d/contrib.list \
  echo "deb http://us.archive.ubuntu.com/ubuntu/ trusty-updates universe" >> /etc/apt/sources.list.d/contrib.list \
  echo "deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-updates universe" >> /etc/apt/sources.list.d/contrib.list \
  echo "deb http://us.archive.ubuntu.com/ubuntu/ trusty multiverse" >> /etc/apt/sources.list.d/contrib.list \
  echo "deb-src http://us.archive.ubuntu.com/ubuntu/ trusty multiverse" >> /etc/apt/sources.list.d/contrib.list \
  echo "deb http://us.archive.ubuntu.com/ubuntu/ trusty-updates multiverse" >> /etc/apt/sources.list.d/contrib.list \
  echo "deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-updates multiverse" >> /etc/apt/sources.list.d/contrib.list \
  echo "deb http://security.ubuntu.com/ubuntu trusty-security universe" >> /etc/apt/sources.list.d/contrib.list \
  echo "deb-src http://security.ubuntu.com/ubuntu trusty-security universe" >> /etc/apt/sources.list.d/contrib.list \
  echo "deb http://security.ubuntu.com/ubuntu trusty-security multiverse" >> /etc/apt/sources.list.d/contrib.list \
  echo "deb-src http://security.ubuntu.com/ubuntu trusty-security multiverse" >> /etc/apt/sources.list.d/contrib.list

RUN apt-get update -qq && apt-get install -y -qq \
  build-essential \
  devscripts \
  equivs \
  libwww-perl \
  curl \
  wget \
  apt-transport-https
