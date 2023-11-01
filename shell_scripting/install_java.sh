#!/bin/bash

####################
# Author: Afrid
# Date: 1-Nov-2023
#
# This script installs java and gives its path
#
# Version: v1
#
####################

# Check if the script is running with superuser privileges (root)

if [ "$(id -u)" -ne 0 ]; then
        echo "Please run this script as root."
        exit 1
fi

# Install Java

yum install java-11* -y

# Export Java path to .bash_profile and add JAVA_HOME in path as well

echo 'export JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto.x86_64' >> ./.bash_profile  # for user-specific configuration use ./.bash_profile path, for System                                                                                        #  -wide configuration use /etc/profile
echo 'export PATH=$PATH:$HOME/bin:/JAVA_HOME' >> ./.bash_profile

# Load the update profile

source ./.bash_profile

# Check the version of java

java --version

# Display the output

echo "Java installed at: $JAVA_HOME"

