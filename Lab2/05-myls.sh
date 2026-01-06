#!/bin/bash

# If no arguments, list current directory
if [ $# -eq 0 ]; then
    ls
else
    if [ -d "$1" ]; then
        ls "$1"
    else
        echo "Error: $1 is not a directory"
        exit 1
    fi
fi