#!/bin/bash

echo "How many numbers do you want to enter?"
read n
declare -a nums
sum=0

for (( i=0; i<n; i++ ))
do
    echo "Enter number $((i+1)):"
    read nums[i]
    sum=$((sum + nums[i]))
done

average=$((sum / n))

echo "Numbers entered:"
for num in "${nums[@]}"
do
    echo "$num"
done

echo "Average = $average"