#!/usr/bin/bash
read -p "Enter the number :" num
if (( $num%2 == 0 ))
then 
	echo "The number $num is even"
else
	echo "The number $num is odd"
fi
