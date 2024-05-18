#!/bin/bash

echo "Script to install Maven"
echo "Installation started"

# Check if the operating system is Linux
if [ "$(uname)" != "Linux" ]; then
    echo "This script is only intended for Linux OS"
    exit 1
else
    echo "This is a Linux OS"
fi

# Check if the user is root
USERID=$(id -u)
if [ "$USERID" -ne 0 ]; then
    echo "You are not the root user. Please run this script as root."
    exit 1
fi

# Update package lists
echo "Updating package lists..."
apt update

# Install Maven
echo "Installing Maven..."
apt install maven -y

echo "Maven installation completed."

