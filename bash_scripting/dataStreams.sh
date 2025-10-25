#!/bin/bash

# data streams in bash
: "
1 -> std output
2 -> std error
"

utilizing the update file for data streams

release_file=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log

if grep -q "Arch" $release_file
then
    #The host is baes on Arch, run the pacman update command
    sudo pacman -Syu 1>>$logfile 2>>$errorlog
    if [ $? -ne 0 ] #chceking the exit code here
    then
        echo "An error occured, please check the $errorlog file"
    fi  
fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then
    #The host is based on Debian or Ubuntu,
    #Run the apt veriosn of the command
    sudo apt update 1>>$logfile 2>>$errorlog
    if [ $? -ne 0 ]
    then
        echo "An error occured, please check the $errorlog file."
    fi
    sudo apt dist-upgrade -y 1>> $logfile 2>>$errorlog
    if [ $? -ne 0 ]
    then
        echo "An error occured, please check the $errorlog file."
    fi 
fi