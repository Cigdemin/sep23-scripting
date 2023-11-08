#!/bin/bash

username=$1
useradd $username

if [ $? == '0' ]
then
    echo "User $username has been created"

elif [ $? == '9' ]; then
    echo "The user $username already exist" 

elif [ $? == '3' ]; then
    echo "You entered an invalid username"    

else 
    echo "there was a problem"
fi

