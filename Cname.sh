#!/bin/bash
for file in "$@"
do
	newname=$(echo "$file" | tr '[:lower:]' '[:upper:]')
	mv "$file" "$newname"
done