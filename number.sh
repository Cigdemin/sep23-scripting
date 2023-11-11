#!/bin/bash

#to be able to recognize number on script you need to use (()) double brackets for calculation
n1=5
n2=2
echo $((n1+n2))

for name in $(seq 1 $n1);do
    echo Hello
done