#!/bin/bash

apt-get install wget
wget https://github.com/tkuchiki/alp/releases/download/v0.3.1/alp_linux_amd64.zip
unzip alp_linux_amd64.zip
mv alp /usr/local/bin/
