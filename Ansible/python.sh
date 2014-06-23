#!/usr/bin/env bash

wget -q http://python.org/ftp/python/2.7.5/Python-2.7.5.tgz
tar xvf Python-2.7.5.tgz
cd Python-2.7.5
./configure
make
make altinstall