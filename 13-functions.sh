#!/bin/bash
USER_ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USER_ID -ne 0 ]; then
    echo "$R ERROR $N:: please run this command with root privelege"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$R ERROR $N:: installing $2 has been $R failed $N"
        exit 1
    else 
        echo "$2 installation is $G successfull $N"
    fi
}

dnf install mysql -y
VALIDATE $? "mysql"

dnf install nginx -y
VALIDATE $? "nginx"

dnf install mongodb -y
VALIDATE $? "mongodb"

dnf install python3 -y
VALIDATE $? "python3"