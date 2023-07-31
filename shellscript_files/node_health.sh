#!/bin/bash

####################
# Author: Afrid 
# Date: 31-Jul-2023
#
# This script outputs the node or system health
#
# Version: v1
####################

set -x # Debug mode
set -e # exit or stop the script when there is an error
set -o # pipefail- | it will check only last command is correct or not, it will not bother any error before that so this comman       # d will check whether it is correct or not and will move further


df -h  # disk space


free -g  # memory free


nproc  # cpu's


ps -ef | grep amazon | awk -F" " '{print $2}'  # ps -ef command going to find the programming files and grep will find 'amazon'                                               # word in that files list and awk command finds to print wat ever sentence in pr                                               # int2 is there. print2 means in a sentence second word......


