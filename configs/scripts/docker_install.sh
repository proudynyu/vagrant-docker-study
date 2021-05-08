#!/bin/bash

sudo apt-get install update -y

DOCKER=$(echo "which docker")

if [ -z $DOCKER ] 
then
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

	sudo add-apt-repository \
	   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
	   $(lsb_release -cs) \
	   stable"

	sudo apt-get update -y && sudo apt upgrade -y

	sudo apt-get install docker-ce -y
fi

echo "docker already installed"