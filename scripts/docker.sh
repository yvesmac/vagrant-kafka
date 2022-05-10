#!/bin/bash
#
# Install docker

sudo apt-get update -y

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

sudo systemctl enable docker.service
sudo systemctl enable containerd.service

cd /home/vagrant/scripts
sudo docker compose up -d