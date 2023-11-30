#!bin/bash
echo "Enter the integer value: "
read n

while [ $n -ge 0 ]
do
  echo "$n"
  let n--
done
