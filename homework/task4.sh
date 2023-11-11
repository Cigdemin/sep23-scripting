#!/bin/bash
# Task 4: Advanced Logic with Loops
# Create a bash script that prompts the user for a string and a number, and then uses a loop to print the string the specified number of times.
read -p "Could you please say some text: " string
#echo $string
read -p "Could you please say me a number now " number
for i in $(seq 1 $number)
do
    echo $string
done
