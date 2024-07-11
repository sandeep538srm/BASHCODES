echo "Enter Num:"
read n
if [ $((n % 2 )) -eq 0 ]
then
	echo "Number is even"
else
	echo "number is odd"
fi