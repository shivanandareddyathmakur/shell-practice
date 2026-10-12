#!/bin/bash
USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "ERROR :: please run this command with root privelege"
    exit 1
fi

dnf install mysql -y
if [ $? -ne 0 ]; then
    echo "ERROR :: mysql--failed to install"
else
    echo "mysql--installed successfully"
fi

dnf install nginx -y
if [ $? -ne 0 ]; then
    echo "ERROR :: nginx--failed to install"
else
    echo "nginx--installed successfully"
fi

dnf install python3 -y
if [ $? -ne 0 ]; then
    echo "ERROR :: python3--failed to install"
else
    echo "python3--installed successfully"
fi