#!/bin/bash

set -o pipefail 

if (( $EUID != 0 )); then
    echo "Please run as ROOT"
    exit
fi

if [ $# -ne 2 ]; then
  echo "[USAGE] : sudo sh slowquery.conf -f <filepath>"
  exit 
fi

conffile=$2
slowquery='slow_query_log = 1\n
slow_query_log_file = /var/log/mysql/slow.log\n
long_query_time = 0.3'

echo $slowquery >> $2  
less $2
