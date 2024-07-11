#!/bin/bash

# Prompt the user for the filename
echo "Enter filename:"
read filename

# Count the number of vowels, blank spaces, characters, symbols, and lines
vowels=$(grep -io '[aeiou]' "$filename" | wc -l)
blanks=$(grep -o ' ' "$filename" | wc -l)
chars=$(grep -o . "$filename" | wc -l)
symbols=$(grep -o '[^[:alnum:] ]' "$filename" | wc -l)
lines=$(wc -l "$filename" | awk '{ print $1 }')

# Display the results
echo "Number of vowels: $vowels"
echo "Number of blank spaces: $blanks"
echo "Number of characters: $chars"
echo "Number of symbols: $symbols"
echo "Number of lines: $lines"
