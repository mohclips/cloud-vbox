#!/bin/bash
echo "********************* Install Ansible"
apt-get install software-properties-common -y
apt-add-repository ppa:ansible/ansible -y
apt-get update -y
apt-get install ansible -y

