#!/bin/bash

set -o pipefail

if [ $EUID != 0 ]; then
		echo "please run as ROOT"
		exit
fi

echo "Modify /etc/nginx/nginx.conf, ok ?  [Y,n]"
read confirm

if [ $confirm = "n" ]; then
		echo Aborting
		exit 
fi


conf=`cat ./rapid.conf`

#cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.first
cp /etc/nginx/nginx.conf ./copy.conf
if [ $? = 1 ]; then
		echo Aborting
		exit
fi

echo "$conf" > ./sample.conf
echo 'Modify done.
- ssl config
- static file gzip config
- cashe config
- access file cashe config
- add worker & worker limit & worker connection'
