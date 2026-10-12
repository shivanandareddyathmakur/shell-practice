#!/bin/bash
USER_ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGS_FOLDER="/var/log/shell-script"
SCRIPT_FILE=$( echo $0 |cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_FOLDER.log"
mkdir -p $LOGS_FOLDER

echo "script started ececuted at $( date )"

if [ $USER_ID -ne 0 ]; then
    echo -e "$R ERROR $N:: please run this command with root privelege"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo -e "$R ERROR $N:: installing $2 has been $R failed $N"
        #exit 1 - if you want to dont continue when an failure occurs
    else 
        echo -e "$2 installation is $G successfull $N"
    fi
}

dnf install mysql -y &>>LOG_FILE
VALIDATE $? "mysql"

dnf install nginx -y &>>LOG_FILE
VALIDATE $? "nginx"

dnf install mongodb -y &>>LOG_FILE
VALIDATE $? "mongodb"

dnf install python3 -y &>>LOG_FILE
VALIDATE $? "python3"