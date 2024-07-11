#!/bin/bash

# check if three filenames were provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <file1> <file2> <file3>"
    exit 1
fi

# check if the files exist
for file in "$@"; do
    if [ ! -f "$file" ]; then
        echo "File '$file' not found."
        exit 1
    fi
done

# combine the files and save the result to a new file
cat "$@" > combined.txt

# display the word count
wc -w combined.txt

echo "Combined files '$1', '$2', and '$3' into 'combined.txt'."
