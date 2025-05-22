#!/usr/bin/bash
read -p "Enter the 3 numbers to compare:" x y z
if (( $x > $y && $x > $z ))
then 
	echo "Number $x is greater"
elif (( $y > $z ))
then 
	echo "Number $y is greater"
else
	echo "Number $z is greater"
fi

