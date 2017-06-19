#!/bin/bash
echo "********************* Install Chrome Browser"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install -y google-chrome-stable

cp /usr/share/applications/google-chrome.desktop /home/vagrant/Desktop/
chmod 755 /home/vagrant/Desktop/google-chrome.desktop
