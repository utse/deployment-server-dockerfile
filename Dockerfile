FROM ubuntu:bionic
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y --fix-missing build-essential curl git htop man unzip vim wget net-tools openssh-server telnet sudo
ADD files/sshd_config /etc/ssh/sshd_config
CMD service ssh start && bash

