#!/bin/bash

# read -p "Please specify your age: " age 

# if age is less than 12:
#     print: Hello, future programmer

# if age is bigger than 12 and less than 30:
#     print: Hello, junior programmer

# if age is between bigger than 30 and less than 65:
#     print: Hello, senior programmer

read -p "Please specify your age: " age
echo $age
if [ $age -le 12 ]
then
echo "Hello Future programmer"
elif [[ $age -gt 12 && $age -lt 30 ]]
then
echo "Hello Junior programmer"
elif [ $age -ge 30 ]
then
echo "Hello, Senior Programmer"
fi