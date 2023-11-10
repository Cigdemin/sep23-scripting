#!/bin/bash
# Task 2: Conditional Statements
# Create a bash script that takes a user's name as a command-line argument. 
# The script should check if the provided name matches a predefined name (e.g., "John"). 
# If it does, the script should print a message like "Hello, John!" If it doesn't match, print a message like "Sorry, you are not John."
name=$1
#echo "Hello $name"
defined_name=Cigdem
if [ $name == $defined_name ]
then
    echo "Hello $name "
else
    echo "Sorry, your are not $defined_name"
fi
