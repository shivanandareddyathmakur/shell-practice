#!/bin/bash
user_ID=(id -u)

if [ $user_ID -ne 0 ]; then
    echo 'ERROR :: please run this command with root privelege'
    exit 1
fi