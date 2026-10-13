#!/bin/bash
USER_ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"
mkdir -p $LOGS_FOLDER

echo "script started ececuted at: $(date)" | tee -a $LOG_FILE #&>>$LOG_FILE only in logs

if [ $USER_ID -ne 0 ]; then
    echo -e "$R ERROR $N:: please run this script with root privelege"
    exit 1 #failure is other than 0
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo -e "$R ERROR $N:: installing $2 has been $R failed $N" | tee -a $LOG_FILE
        #exit 1 - if you want to dont continue when an failure occurs
    else 
        echo -e "$2 installation is $G successfull $N"
    fi
}

#if we use tee then it'll dispaly over and will also be saved logs file
dnf list installed mysql &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install mysql -y &>>$LOG_FILE
    VALIDATE $? "mysql"
else
    echo -e "mysql already exist ... $Y SKIPPING $N" | tee -a $LOG_FILE
fi 

dnf list installed nginx &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install nginx -y &>>$LOG_FILE
    VALIDATE $? "mysql"
else
    echo -e "nginx already exist ... $Y SKIPPING $N" | tee -a $LOG_FILE
fi

dnf list installed python3 &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install python3 -y &>>$LOG_FILE
    VALIDATE $? "python3"
else
    echo -e "python3 already exist ... $Y SKIPPING $N" | tee -a $LOG_FILE
fi 