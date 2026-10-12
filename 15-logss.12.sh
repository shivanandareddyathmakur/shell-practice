#!/bin/bash
USER_ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( (echo $0) | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"
mkdir -p $LOGS_FOLDER

if [ $USER_ID -ne 0 ]; then
    echo -e "$R ERROR $N:: please run this command with root privelege"
    exit 1
fi

echo "script started ececuted at $( date )" | tee -a $LOG_FILE #&>>$LOG_FILE only in logs

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo -e "$R ERROR $N:: installing $2 has been $R failed $N"
        #exit 1 - if you want to dont continue when an failure occurs
    else 
        echo -e "$2 installation is $G successfull $N"
    fi
}

#if we use tee then it'll dispaly over and will also be saved logs file
dnf install mysql -y | tee -a $LOG_FILE #&>>$LOG_FILE only in logs
VALIDATE $? "mysql"

dnf install nginx -y | tee -a $LOG_FILE #&>>$LOG_FILE only in logs
VALIDATE $? "nginx"

dnf install nodejs -y | tee -a $LOG_FILE #&>>$LOG_FILE only in logs
VALIDATE $? "nodejs"

dnf install python3 -y | tee -a $LOG_FILE #&>>$LOG_FILE only in logs
VALIDATE $? "python3"