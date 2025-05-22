#!/usr/bin/bash
read -p "Enter the numbers to be calculated:" x y
read -p "Enter the operation to be performed + or - or * or / :" i
case $i in
	+)
		sum=$((x + y)) 
		echo "The sum is $sum" 
		;;
	-)
		diff=$((x - y)) 
		echo "The difference is $diff" 
		;;
	\*)
		mul=$(( x * y ))
		echo "The multiplication is $mul" 
		;;
	/)
		div=$(( x / y ))
		echo "The remainder is $div" 
		;;
esac

