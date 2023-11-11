#!/bin/bash
# Task 5: Combining Commands and Logic
# Write a bash script that takes a directory path as a command-line argument and lists all files in that directory. 
#For each file, check if it's a regular file or a directory. If it's a directory, list its contents as well.
folder_path=$1
if [ $# -le 0 ]; then
    echo "Usage : $0 <file_path>"
    exit 1
fi
echo $folder_path
file_list=$(ls $folder_path)
echo $file_list

for item in $file_list
do
    if [ -r $item ]
    then
        echo "This $item is a file"
    else [ -d $item ]
        echo "The $item is a folder and this is the list of files in it: "
        ls $folder_path/$item
    fi
done

