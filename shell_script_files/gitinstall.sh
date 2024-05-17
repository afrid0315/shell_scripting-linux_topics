#!/bin/bash
echo "script to install git"
echo "Installation started"
if [ "$(uname)" == "Linux" ];  
then
      echo "this is linux OS, installing GIT"
      apt install git -y
elif [ "$(uname)" == "Darwin" ];
then
      echo "this is mac OS, Installing GIT"
      brew install git -y
else
      echo "not installing"
fi