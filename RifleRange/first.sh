#!/bin/bash

set -o pipefail 

if (( $EUID != 0 )); then
    echo "Please run as ROOT"
    exit
fi

echo -n -e "mysql"
