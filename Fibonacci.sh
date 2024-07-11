echo "Enter N"
read n
echo "The Fibonacci Series:"
a=0
b=1
for((i=0;i<n;i++))
do
	echo -ne "$a "
	fb=$((a+b))
	a=$b
	b=$fb
done