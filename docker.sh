#!/bin/sh

# SETUP REPOSITORY
sudo apt-get update
sudo apt-get install  apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) stable"

# INSTALL DOCKER
sudo apt-get update
sudo apt-get install docker-ce

# Test docker installation.
sudo docker run hello-world

# Enable running docker without sudo.
sudo usermod -G docker $USER
echo "Please logout then login again to use docker without sudo."