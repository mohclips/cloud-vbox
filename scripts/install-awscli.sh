#!/bin/bash
echo "********************* Install AWS CLI"
apt-get install python-pip -y
apt-get install awscli -y 

echo "complete -C '$(which aws_completer)' aws" >> /etc/profile
