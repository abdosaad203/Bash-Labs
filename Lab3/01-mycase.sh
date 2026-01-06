#!/bin/bash

echo "Enter a character:"
read ch
case "$ch" in
    "")
        echo "Nothing entered"
        ;;
    [A-Z])
        echo "Upper case letter"
        ;;
    [a-z])
        echo "Lower case letter"
        ;;
    [0-9])
        echo "Number"
        ;;
    *)
        echo "Other character"
        ;;
esac