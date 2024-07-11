#!/bin/bash
#echo "Enter directory name:"
#read dir
# Loop over each subdirectory in the current directory
for dir in */; do
  # Count the number of files in the subdirectory
  count=$(find "$dir" -maxdepth 1 -type f | wc -l)
  # Print the directory name and file count
  echo "$dir: $count files"
done
