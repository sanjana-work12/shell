#!/usr/bin/bash

read -p "Enter the directory to be checked: " dir

if [ -d "$dir" ]; then
  echo "Listing .log files modified in the last 7 days:"
  find "$dir" -name "*.log" -mtime -7
else
  echo "Directory '$dir' does not exist."
fi

