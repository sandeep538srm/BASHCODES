#echo "Enter the filename:"
#read txt
filename=$1
while read -r line
do
	word_count= echo $line | wc-w
	char_count= echo $line | wc-m
	echo "Line: $txt"
	echo "Number of characters: $char_count"
	echo "Number of words: $word_count"
	echo ""
done < "$filename"
