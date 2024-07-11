if [ $# -eq 0 ]; then 
	echo "Usage: $0 <filename>"
	exit 1
fi

if aspellcheck $1; then
	echo "No spelling errors found."
else
	echo "Spelling errors found."
fi