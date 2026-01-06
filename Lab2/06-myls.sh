#!/bin/bash

options=""
while getopts ":lad iR" opt; do
    case $opt in
        l) options+=" -l" ;;
        a) options+=" -a" ;;
        d) options+=" -d" ;;
        i) options+=" -i" ;;
        R) options+=" -R" ;;
        *)
            echo "Invalid option"
            exit 1
            ;;
    esac
done

shift $((OPTIND - 1))

if [ $# -eq 0 ]; then
    ls $options
else
    ls $options "$1"
fi
