#!/bin/bash

# Prompt the user for two numbers and an operation
echo "Enter first number:"
read num1
echo "Enter second number:"
read num2
echo "Enter operation (+, -, *, /):"
read op

# Check the operation and perform the calculation
case $op in
  +) result=$(echo "$num1 + $num2" | bc) ;;
  -) result=$(echo "$num1 - $num2" | bc) ;;
  \*) result=$(echo "$num1 * $num2" | bc) ;;
  /) result=$(echo "$num1 / $num2" | bc) ;;
  *) echo "Invalid operation" ; exit 1 ;;
esac

# Display the result
echo "Result: $result"
