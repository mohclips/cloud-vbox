#!/bin/bash

echo "********************* Clean up unneeded packages"
apt-get purge -y libreoffice* \
    thunderbird \
    fonts-noto-cjk \
    fonts-nanum \
    gnome-user-guide \
    ubuntu-docs \
    ubuntu-touch-sounds
apt-get autoremove -y

echo "********************* Full OS patch"
apt-get update -y
DEBIAN_FRONTEND=noninteractive apt-get -y -o DPkg::options::="--force-confdef" -o DPkg::options::="--force-confold" install grub-pc
apt-get upgrade -y
apt-get clean -y
