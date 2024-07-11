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

# convert all characters to lowercase and overwrite the original file
tr '[:upper:]' '[:lower:]' < "$1" > "$1.tmp" && mv "$1.tmp" "$1"

echo "Converted '$1' to lowercase."
