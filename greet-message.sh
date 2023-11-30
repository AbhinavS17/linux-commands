#!/bin/bash

Hour=$(date +"%H")

if [ $Hour -ge 0 -a $Hour -lt 12 ]; then
  Greet="GOOD MORNING, $USER"
elif [ $Hour -ge 12 -a $Hour -lt 18 ]; then
  Greet="GOOD AFTERNOON, $USER"
else
  Greet="GOOD EVENING, $USER"
fi

echo $Greet

