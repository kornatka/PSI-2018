#!/bin/bash
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install docker-ce -y
sudo docker swarm init
sudo docker stack deploy -c /vagrant/docker-compose.yml vVv