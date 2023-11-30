#!/bin/bash

if [ $# -ne 3 ]; then
  echo "$0: Error - command arguments missing!"
  echo "Usage: $0 start_line uptoline filename"
  echo "Where start_line is the line number from which you would like to print the file"
  echo "uptoline is the line number up to which you would like to print"
  echo "For example: $0 5 10 myfile"
  echo "Here, from myfile, a total of 10 lines will be printed starting from line no. 5."
  exit 1
fi

start_line=$1
upto_line=$2
filename=$3

if [ -e "$filename" ]; then
  tail -n +$start_line "$filename" | head -n $((upto_line - start_line + 1))
  exit $?
else
  echo "$0: Error - opening file $filename"
  exit 2
fi

