#!/bin/bash
USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "ERROR :: please run this command with root privelege"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "ERROR:: installing $2 is faiulre"
        exit 1
    else 
        echo "installation is successfull"
    fi
}

dnf install mysql -y
VALIDATES $? "mysql"

dnf install nginx -y
VALIDATES $? "nginx"

dnf install mongodb -y
VALIDATES $? "mongodb"

dnf install python3 -y
VALIDATE $? "python3"