echo "Enter Number or String"
read tst
if [[ $tst =~ [0-9] ]]
then
	echo "It is a number."
else
	echo "It is a string."
fi