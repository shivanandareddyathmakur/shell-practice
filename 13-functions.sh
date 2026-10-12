#!/bin/bash
USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "ERROR :: please run this command with root privelege"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "ERROR:: installing $2 has been failed"
        exit 1
    else 
        echo "$2 installation is successfull"
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