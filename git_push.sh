#!/bin/bash

git add .
if [ $# -le 0 ]; then
    read -p "Please enter a commit message: " commit_massage
    git commit -m "$commit_massage"
else
    git commit -m "$1"
fi

git push