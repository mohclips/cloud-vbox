#!/bin/bash
echo "********************* Install Azure"
sudo apt-get install nodejs-legacy npm -y
sudo npm install -g azure-cli

azure --completion >> /etc/profile
