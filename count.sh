#!/usr/bin/bash
read -p "Enter the filename :" file
if [ -f $file ]
then
  line=$(cat $file | wc -l)
  char=$(cat $file | wc -c)
  word=$(cat $file | wc -w)

	echo "Details of file:"
	echo
	echo "The file $file contains $line number of lines"
	echo "The file $file contains $word number of words"
	echo "The file $file contains $char number of characters"
else
	echo "The given item doesnot exists"
fi
