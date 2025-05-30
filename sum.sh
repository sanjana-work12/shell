#!/bin/bash
array=(2 3 4 5 6)
sum=0
for i in "${array[@]}"; do
	sum=$((sum + i))
	done
	echo $sum
