#!/bin/bash

# Check if the number of arguments is correct
if [ $# -ne 3 ]; then
  echo "Usage: $0 <filename> <c> <s>"
  exit 1
fi

# Assign the arguments to variables
filename=$1
c=$2
s=$3

# Replace each occurrence of character c with string s
count=$(sed -i "s/$c/$s/g" "$filename")

# Display the number of replacements
echo "Number of replacements: $count"
