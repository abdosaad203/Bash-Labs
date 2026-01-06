#!/bin/bash

# If no arguments, go to HOME
if [ $# -eq 0 ]; then
    cd ~ || exit 1
else
    cd "$1" || {
        echo "Error: cannot change directory to $1"
        exit 1
    }
fi