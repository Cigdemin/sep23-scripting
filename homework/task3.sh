#!/bin/bash
# Task 3: File Manipulation
# Write a bash script that takes a file name as an argument. 
# The script should check if the file exists and is readable, and if it does, it should display the content of the file.
#read -p "Which file are you looking for? : " name ## answer as "push"
name=$1
file_name=`ls | grep $name`
echo $file_name
if [[ -a $file_name && -r $file_name ]]
then
    cat $file_name
else
    echo "File is not exist"
fi

