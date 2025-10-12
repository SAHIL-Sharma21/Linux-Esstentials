#!/bin/bash

echo "using varibles in the bash scripting"
myName="Sahil Sharma"
myAge="25"

echo "My name is: $myName and my age is: $myAge"
echo "I'm $myAge years old."

# using  math in bash script
myNum1=100
myNum2=50

echo "Mathematical expressions": 
expr $myNum1 + $myNum2
expr $myNum1 - $myNum2
expr $myNum1 / $myNum2
expr $myNum1 \* $myNum2 #special case here using escape literal \

