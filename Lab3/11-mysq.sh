#!/bin/bash

mysq() {
    num=$1
    square=$((num * num))
    echo "Square of $num is $square"
}

echo "Enter a number:"
read n
mysq "$n"