echo "Enter Number:"
read n
b=$n
fact=1
while [ $n -gt 1 ]
do
	fact=$((fact*n))
	n=$((n-1))
done
echo "$b factorial is $fact"