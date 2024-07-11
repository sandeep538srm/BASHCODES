echo "Enter the filename:"
read txt
if [ ! -f $txt ]
then
	echo "The file doesn't exist."
else
	modtime=$(stat -c %y $txt)
	echo "The last modification time of the file $txt is: $modtime"
fi