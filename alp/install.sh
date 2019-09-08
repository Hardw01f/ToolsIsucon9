#!/bin/bash

apt-get install wget unzip
wget https://github.com/tkuchiki/alp/releases/download/v0.3.1/alp_linux_amd64.zip
mv alp_linux_amd64.zip $HOME/
unzip alp_linux_amd64.zip
mv alp /usr/local/bin/
