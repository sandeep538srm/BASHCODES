#!/bin/bash

# check if a filename was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# check if the file exists
if [ ! -f "$1" ]; then
    echo "File '$1' not found."
    exit 1
fi

# initialize line counter
line_num=1

# loop through each line in the file
while read line; do
    # determine if the line number is even or odd
    if [ $((line_num % 2)) -eq 0 ]; then
        # even line number - write to evenfile
        echo "$line" >> evenfile
    else
        # odd line number - write to oddfile
        echo "$line" >> oddfile
    fi
    # increment the line number counter
    ((line_num++))
done < "$1"

echo "Even lines written to 'evenfile' and odd lines written to 'oddfile'."
