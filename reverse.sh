#!/usr/bin/bash
read -p "Enter the string:" string
str=$(echo $string | rev)
echo "The reverse of the string is :- $str"
