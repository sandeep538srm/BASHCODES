#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Usage: $0 <filename>"
	exit 1
fi
if [ ! -r $1]; then
	echo "Error: $1 is not readable or does not exist"
	exit 1
fi
sed 's/ /saikumar/g' $1 >> ${1}_nonspace
echo "File contents with no space saved to ${1}_nonspace"