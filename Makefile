SHELL := /bin/bash


create_user:
	source scripts/build/create_user.sh

setup_node:
	curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
	apt install -y nodejs
	npm install -g npm
