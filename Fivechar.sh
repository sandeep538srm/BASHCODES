echo "Enter string"
read str
if [[ ${#str} -lt 5 ]]
then
	echo "String doesn't have 5 characters"
else
	echo "String has atleat 5 characters"
fi