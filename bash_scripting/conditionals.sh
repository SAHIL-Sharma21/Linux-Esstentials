#!/bin/bash

#conditionals in bash scripting
myNum=25

# basic if statement 
if [ $myNum -eq 25 ]
then
    echo "The Condtion is true."
fi

# if-else statement
myAge=27
if [ $myAge -eq 30 ]
then
    echo "The age is equal to 30."
else
    echo "The age is not equal to 30."
fi

: '
-eq -> equal to
-ne -> not equal to
-gt -> greater then
-ge -> greater then or equal
-le -> less then or equal
-lt -> less then
'
#check files in file system with if
if [ -f ~/myfile ]
then
    echo "The file exists"
else
    echo "The file does not exist"
fi


# command check and install
command=/usr/bin/htop
if [ -f $command ]
then
    echo "$command is available, let's run it..."
else 
    echo "$command is not available, installing it.."
    sudo apt update && sudo apt install -y htop
fi

# $command

# alternate way to check for command is:
 myCommand=htop
 if command -v $myCommand
 then
    echo "$myCommand is available, lets run it..."
else 
    echo "$myCommand is not availbale, installing it.."
    sudo apt update && sudo apt install -y htop
fi

# $myCommand
