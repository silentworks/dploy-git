GITRECEIVE_URL ?= https://raw.github.com/progrium/gitreceive/master/gitreceive

all: dependencies appdir install usage

install:
	usermod -G www-data git
	git config --system receive.denyDeleteCurrent warn
	cp receiver /home/git/receiver

usage:
	@cat USAGE.txt
	@echo && echo

dependencies: base gitreceive

base:
	apt-get update
	apt-get install -y git curl wget

gitreceive:
	wget -qO /usr/local/bin/gitreceive ${GITRECEIVE_URL}
	chmod +x /usr/local/bin/gitreceive
	test -f /home/git/receiver || gitreceive init

appdir:
	mkdir -p /srv/app
	chmod g+s /srv/app
	chown git:www-data /srv/app/