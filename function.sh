#!/bin/bash

# function_name() {
#     commands
# }

# function function_name() {
#     commands
# }
filename=$1
content=$2

function cert_writer {
    touch /var/www/html/certificates/$filename
    echo "$content" > /var/www/html/certificates/$filename
}

if [ $# -le 1 ];then
    echo "usage: $0 <cert filename><file content>"
    exit 1
fi

cert_writer