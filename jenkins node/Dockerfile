FROM ubuntu

USER root

RUN apt-get update && \
apt-get -y install apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common && \
    curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; \
    echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
    add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
        $(lsb_release -cs) \
        stable" && \
    apt-get update && \
    apt-get install docker-ce -qq;


RUN usermod -aG docker root; \
    mkdir jenkins; \
    mkdir ~/.ssh 2>> /dev/null; 

COPY id_rsa.pub ~/.ssh/authorized_keys

RUN apt-get install openjdk-8-jdk -qq; \
    apt-get install openssh-server -qq; \
    apt-get install git -qq; \
    service ssh start;
