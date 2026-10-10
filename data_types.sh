#!/bin/bash
#everything in shell is considered as string
NUMBER1=100
NUMBER2=200
NAME=Devops
SUM=$(($NUMBER1+$NUMBER2+$NAME))
echo "sum of two numbers is : ${SUM}"

#out put will be 300 only because shell is considering NAME as 0
