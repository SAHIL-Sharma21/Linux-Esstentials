#!/bin/bash

: '
echo "What is your favourite linux distros?"

echo "1 - Arch"
echo "2 - Centos"
echo "3 - Debian"
echo "4 - Mint"
echo "5 - Ubuntu"
echo "6- something else...."


read distro;

case $distro in 
    1) echo "Arch is a rolling release";;
    2) echo "Centos is popular on servers";;
    3) echo "Debian is community distribution";;
    4) echo "Mint is popular in desktop and laptops";;
    5) echo "Ubuntu is popular on servers and computers.";;
    6) echo "There are many distributions out there.";;
    *) echo "Invalid option";;
esac 
'

# // to keep it running 
finished=0
while [ $finished -ne 1 ]
do 
    echo "What is your favourite linux distro?"

    echo "1 - Arch"
    echo "2 - Centos"
    echo "3 - Debian"
    echo "4 - Mint"
    echo "5 - Ubuntu"
    echo "6- something else...."
    
    read distro;

    case $distro in
        1) echo "Arch is a rolling release";;
        2) echo "Centos is popular on servers";;
        3) echo "Debian is community distribution";;
        4) echo "Mint is popular in desktop and laptops";;
        5) echo "Ubuntu is popular on servers and computers.";;
        6) echo "There are many distributions out there.";;
        7) finished=1;;
        *) echo "Invalid option";;
    esac
done

echo "Thank yoiu for using the script."