#!/bin/bash

# Prompt the user for the two strings
echo "Enter first string:"
read str1
echo "Enter second string:"
read str2

# Concatenate the strings and display the result
result="$str1$str2"
echo "Result: $result"

# Display the length of the result
length=${#result}
echo "Length of result: $length"
