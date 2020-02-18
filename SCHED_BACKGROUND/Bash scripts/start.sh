#!/bin/bash
START_TIME=$SECONDS

#READFILE is the name of the large file that we used.
#./reader.sh READFILE 
./counter.sh &
./counter1.sh

DUR=$(($SECONDS - $START_TIME))
echo "Total time: $DUR"
