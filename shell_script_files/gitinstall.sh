#!/bin/bash
echo "script to install git"
echo "Installation started"

if [ "$(uname)" != "Linux" ];  
then
      echo "This script is only intended for Linux OS"
      exit 1
else
      echo "This is linux OS"
fi

USERID=$(id -u)
if [ USERID -ne 0 ];
then
      echo "You are not root user to execute this script"
      exit 1
fi

apt install git -y

