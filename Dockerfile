FROM debian:latest

RUN apt update

RUN apt install openssh-server sudo -y

RUN useradd --system --create-home --home /home/test --shell /bin/bash --gid root --groups sudo --uid 1000 test 

RUN usermod --append --groups sudo test

RUN service ssh start

RUN  echo 'test:test' | chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
