#!/bin/bash

echo "How many elements do you want to enter?"
read n
declare -a arr

for (( i=0; i<n; i++ ))
do
    echo "Enter element $((i+1)):"
    read arr[i]
done

echo "You entered the following elements:"
for element in "${arr[@]}"
do
    echo "$element"
done