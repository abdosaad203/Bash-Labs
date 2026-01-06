#!/bin/bash

echo "Enter a string:"
read str
case "$str" in
    "")
        echo "Nothing entered"
        ;;
    *[!A-Z]*)
        ;;
    [A-Z]*)
        echo "Upper case string"
        ;;
esac

case "$str" in
    *[!a-z]*)
        ;;
    [a-z]*)
        echo "Lower case string"
        ;;
esac

case "$str" in
    *[!0-9]*)
        ;;
    [0-9]*)
        echo "Numbers only"
        ;;
esac

case "$str" in
    *[A-Za-z]*[0-9]*|*[0-9]*[A-Za-z]*)
        echo "Mixed string"
        ;;
esac
