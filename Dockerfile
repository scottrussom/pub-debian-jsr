FROM ubuntu:latest
# FROM debian:latest

RUN apt update 

RUN apt install  openssh-server sudo -y

# Both lines below are the same
# RUN useradd -rm -d /home/test -s /bin/bash -g root -G sudo -u 1000 test 
RUN useradd --system --create-home --home /home/test --shell /bin/bash --gid root --groups sudo --uid 1000 test 

# Both lines below are the same
# RUN usermod -aG sudo test
RUN usermod --append --groups sudo test

RUN  echo 'test:test' | chpasswd

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
