#!/bin/bash
# Task 5: Combining Commands and Logic
# Write a bash script that takes a directory path as a command-line argument and lists all files in that directory. 
#For each file, check if it's a regular file or a directory. If it's a directory, list its contents as well.
folder_path=$1
file_list=ls $folder_path
cat $file_list
