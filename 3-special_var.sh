#!/bin/bash
echo "all variables passed to the script: $@"
echo "all variables passed to the script: $*"
echo "script name : $0"
echo "current directory: $PWD"
echo " who is running this : $USER"
echo "home directory of user : $HOME"
echo "PID of this script: $$"
sleep 50 & #using & will help the process"sleep 50" to run in background and will go to next line
echo "PID of the last command in background: $!"

