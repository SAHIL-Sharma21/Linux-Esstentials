#!/bin/bash

# loops in bash scripting

myVar=1

while [ $myVar -le 10 ]
do
    # body
    echo "$myVar"
    myVar=$(( $myVar + 1 ))
    sleep 0.5
done

: '
# infinte loop example
while [ -f ~/testfile ]
do
    echo "As of $(date), the test file exists."
    sleep 5
done
echo "As of $(date), the tests file has gone missing."
'
