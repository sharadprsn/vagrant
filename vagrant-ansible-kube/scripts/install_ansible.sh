#!/usr/bin/env bash

# install ansible (http://docs.ansible.com/intro_installation.html)
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install git ansible

cat <<EOT >> /etc/hosts

192.168.15.20   master      master
192.168.15.21   node-1      node-1
192.168.15.22   node-2      node-2

EOT

cat <<EOT >> /etc/ansible/ansible.cfg

[defaults]
host_key_checking = false
ansible_python_interpreter=/usr/bin/python3

EOT