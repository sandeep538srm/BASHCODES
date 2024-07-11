echo "Enter Number:"
read n
sum=0
while [ $n -gt 0 ]
do
	mod=$((n%10))
	sum=$((sum+mod))
	n=$((n/10))
done
echo $sum