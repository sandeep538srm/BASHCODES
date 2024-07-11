#!/bin/bash

# Get the filename and username from the command line
filename="$1"
username="$USER"

# Print the first 15 lines of the file
head -n 15 "$filename"

# Loop until the entire file has been displayed
while true; do
  # Ask the user to press a key
  read -rsp "Press any key to continue or 'q' to quit..." -n1 key

  # If the user pressed 'q', exit the loop
  if [[ "$key" == "q" ]]; then
    break
  fi

  # Clear the screen and print the next 15 lines of the file
  clear
  tail -n +16 "$filename" | head -n 15
done
