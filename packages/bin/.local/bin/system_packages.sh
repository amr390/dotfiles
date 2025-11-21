#!/bin/bash


echo "Update System base packages"

sudo apt update
sudo apt dist-upgrade -y

echo "Installing dev packages"

sudo apt install git-core \
    python-setuptools \
    virtualenv \
    virtualenvwrapper \
    vim \
    vim-gnome \
    postgresql \
    pgadmin3 \
    curl

