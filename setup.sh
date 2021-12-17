#!/usr/bin/env bash

echo "Bitte als ADMIN ausfürhen"

apt-get update
apt-get upgrade -y
#remove docker
apt-get remove docker docker-engine docker.io containerd runc
#install docker
apt-get install ca-certificates 
apt-get istall curl 
apt-get install gnupg 
apt-get install lsb-release

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


apt-get update
apt-get install docker-ce docker-ce-cli containerd.io

#docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

echo "done"