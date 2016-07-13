#!/bin/bash


echo "Update System base packages"

sudo apt-get update
sudo apt-get dist-upgrade -y

echo "Installing dev packages"

sudo apt-get install git-core python-setuptools virtualenv virtualenvwrapper vim vim-gnome mariadb-client mariadb-server mysql-workbench postgresql pgadmin3

