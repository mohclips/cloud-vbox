#!/bin/bash
apt-get install -y curl \
	tree \
	git \
	terminator \
	jq \
	fonts-hack-ttf \
	gnome-session-flashback \
	python-pip

cp /usr/share/applications/terminator.desktop /home/vagrant/Desktop/
chmod 755 /home/vagrant/Desktop/terminator.desktop

