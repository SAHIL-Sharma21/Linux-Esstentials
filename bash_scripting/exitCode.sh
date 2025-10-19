#!/bin/bash

# exit codes in bash scripting

package=htop

sudo apt install $package
# echo "The exit code for the package install is: $?"

if [ $? -eq 0 ]
then
    echo "The installation of package is successful."
    echo "The new command is avalaible here:"
    which $package
else
    echo "$package failed to install"
fi

echo $?
