#!/bin/bash

# Check if argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: mytest file_or_directory"
    exit 1
fi

target="$1"
# Check existence
if [ ! -e "$target" ]; then
    echo "Error: $target does not exist"
    exit 1
fi

# Check type
if [ -f "$target" ]; then
    echo "$target is a file"
elif [ -d "$target" ]; then
    echo "$target is a directory"
fi

# Check permissions
[ -r "$target" ] && echo "Readable" || echo "Not readable"
[ -w "$target" ] && echo "Writable" || echo "Not writable"
[ -x "$target" ] && echo "Executable" || echo "Not executable"
