#!/bin/bash

USERID=$(id -u)

VALIDATE () {
if [ $1 -ne 0 ];
then
    echo "$2 failed"
    exit 1
else 
    echo "$2 success"
fi
}


if [ $USERID -ne 0 ]; 
then
    echo "U need to root user. To execute this task"
    exit 1
else
    echo "Start Download and Install Jenkins"
fi

apt update -y

VALIDATE $? "apt update"

wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

VALIDATE $? "wget"

apt-get update -y

VALIDATE $? "apt-get"

apt install fontconfig openjdk-17-jre -y

VALIDATE $? "apt command"

apt-get install jenkins -y

VALIDATE $? "apt command"

systemctl enable jenkins

VALIDATE $? "systemctl command"

systemctl start jenkins

VALIDATE $? "systemctl START command"

systemctl status jenkins

