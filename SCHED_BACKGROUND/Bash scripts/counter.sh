#!/bin/bash
count=1
START=$SECONDS

#Comment/ uncomment the below line to toggle between background/ normal.
chrt -x -p 0 $$
#Use this line to set the niceness value of the process
#renice -20 $$
for number in {1..2000000}
do
	count=$(( $count + 1))
done

dur=$(( $SECONDS - $START ))
echo "counter duration: $dur"
echo "counter PID: $$"
