#!/bin/bash
# Lab3 - Question 7
# This file explains the output of the given script

# Declare integer variables
# typeset -i forces variables to be treated as integers
# typeset -i n1
# typeset -i n2

# Initial values
# n1=1
# n2=1

# While loop checks if n1 equals n2
# while test $n1 -eq $n2
# do
#     n2=$n2+1        # Increment n2
#     print $n1       # Print value of n1
#
#     if [ $n1 -gt $n2 ]
#     then
#         break
#     else
#         continue    # Skip the remaining code and go to next iteration
#     fi
#
#     n1=$n1+1        # This line is never executed
#     print $n2       # This line is never executed
# done

# =========================
# Explanation:
# The loop runs only once.
# n1 starts as 1 and n2 becomes 2 inside the loop.
# The continue statement skips incrementing n1.
# When the loop condition is checked again, n1 != n2, so the loop ends.
#
# =========================
# Output:
# 1
