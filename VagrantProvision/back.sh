#!/usr/bin/env bash

sudo apt-get update

# install Apache
sudo apt-get install -y apache2

# install python
sudo apt-get install -y build-essential  
sudo apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
cd ~/Downloads/
wget http://python.org/ftp/python/2.7.5/Python-2.7.5.tgz
tar -xvf Python-2.7.5.tgz
cd Python-2.7.5
./configure
make
sudo make altinstall

# install pip
sudo apt-get install -y python-pip