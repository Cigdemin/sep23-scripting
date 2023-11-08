#!/bin/bash

username=$1
useradd $username

if [ $? == '0' ]; then
    echo "User $username has been created"
else 
    echo "there was a problem"
fi

