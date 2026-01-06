#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Usage: mycp source_file(s) destination"
    exit 1
fi

dest="${@: -1}"

if [ $# -gt 2 ] && [ ! -d "$dest" ]; then
    echo "Error: destination must be a directory when copying multiple files"
    exit 1
fi

for src in "${@:1:$#-1}"; do
    if [ -e "$src" ]; then
        cp "$src" "$dest"
    else
        echo "Error: $src does not exist"
    fi
done
