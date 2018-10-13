SHELL := /bin/bash


create_user:
	source scripts/build/create_user.sh

setup_node:
	curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
	apt install -y nodejs
	npm install -g npm

vue_dev:
	rm -rf pythonph/assets/webpack_bundles/*;
	cd frontend; npm run build_dev; cd -;
	make assets

vue:
	rm -rf pythonph/assets/webpack_bundles/*;
	cd frontend; npm run build; cd -;
	make assets
