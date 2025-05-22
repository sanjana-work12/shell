#!/usr/bin/bash
date=$(date | awk {'print $1 " " $2 " " $3 " " $8'}) 
time=$(date | awk {'print $4 " " $5 " "'})
user=$(whoami)
dir=$(pwd)

echo "Details of system"
echo "-----------------"
echo "Date : $date"
echo "Time : $time"
echo "User : $user"
echo "Current directory : $dir"
