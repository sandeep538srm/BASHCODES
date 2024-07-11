#!/bin/bash

# Get the filename from the command line
filename="$1"

# Use grep to count the number of articles in the file
count=$(grep -io "\b\(a\|an\|the\)\b" "$filename" | wc -l)

# Print the result
echo "The file '$filename' contains $count English articles."
