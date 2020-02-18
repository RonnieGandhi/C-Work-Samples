#!/bin/bash

START=$SECONDS
pp=0

#Comment/ uncomment the below line to toggle between background/ normal.
#chrt -x -p 0 $$
input="/home/eon/Desktop/READFILE"
while IFS= read -r var
do
pp=1 #Have to put some command here for 'while' to execute.
done < "$input"

dur=$(( $SECONDS - $START ))
echo "Read duration: $dur"
echo "Read PID: $$"
