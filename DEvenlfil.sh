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

# create a temporary file
tempfile=$(mktemp)

# initialize line counter
line_num=1

# loop through each line in the file
while read line; do
    # determine if the line number is even or odd
    if [ $((line_num % 2)) -eq 0 ]; then
        # even line number - skip this line
        continue
    else
        # odd line number - write the line to the temporary file
        echo "$line" >> "$tempfile"
    fi
    # increment the line number counter
    ((line_num++))
done < "$1"

# move the temporary file to the original file
mv "$tempfile" "$1"

echo "Even numbered lines deleted from '$1'."
