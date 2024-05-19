#!/bin/bash

Hello () {
    echo "Hi!!! $1"
    echo "Name of the script: $0"
    echo "Name of the script: $(basename $0)"   # To display only the script's name without the leading path (./) like above cmds output(for reference)
    echo "Number of arguments: $#"
    echo "All arguments are: $@"
}


echo "Hello $1"                                      #Difference between in function parameters and directly giving parameters
echo "Name of the script: $(basename $0)"
echo "Number of arguments: $#"
echo "All arguments: $@"

Hello $1  
