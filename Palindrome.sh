echo "Enter String"
read str
reverse=""
len=${#str}
for((i=$len-1;i>=0;i--))
do
	reverse="$reverse${str:$i:1}"
done
if [ $str == $reverse ]
then 
	echo "IS Palindrome."
else
	echo "IS not palindrome."
fi