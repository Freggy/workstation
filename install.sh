#!/bin/bash

echo "INFO Installing Ansible"

sudo apt update
sudo apt-get install -y ansible

echo "INFO Installing roles"

while read p; do
  ansible-galaxy install $p
done <.roles
