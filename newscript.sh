#!/usr/bin/bash
read -p "Enter the filename : " file
if [ -f $file ]
then
	echo "File exists"
else
	echo "File doesnot exists"
fi

