#!/bin/bash
SRC="$1"
DST="$2"
# $# is to count number of arguments 
# ne means not equal 
# $(basename $0) is a comand that invokes the directory without path $0 holds the name of the directoty.
if [ $# -ne 2 ]; then
	echo "$(basename $0) dir1 dir2"
	exit 1
fi
# '!'  means not  -d  checks the directory
if [ ! -d $SRC ]; then 
	echo "Directory $SRC does not exist!"
	exit 2
fi
if [ ! -d $DST ]; then
	echo "Directory $DST does not exist"
	exit 2
fi
for f in $DST/*
do
	# -f read the file
	if[ -f $f]; then
	tFile="$SRC/$(basename $f)"
	if[ -f $tFile ]; then
		# -n gives cursor immediate after the print satement.
	echo -n "Deleting $tFile"
	# to delete the file.
	/bin/rm $tFile
	# $? gives the value stored in i.
		[ $? -eq 0 ]&& echo "done"||echo "failed"
	fi
	fi
done