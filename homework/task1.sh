#!/bin/bash
# Task 1: Simple Variable Manipulation
# Write a bash script that declares two variables, assigns string values to them, and then concatenates and prints them.
var1=`hostnamectl | grep "Operating System"`
var2=`dmidecode -t system | grep "Manufacturer:"`
var3=`dmidecode -t system | grep "Product Name:"`
echo "This virtual machine with $var3 is running on $var2 with the $var1"