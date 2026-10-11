#!/bin/bash
NUMBER=$1
if [ $NUMBER -lt 10 ]; then
    echo "the value $NUMBER is less than 10"
    echo "the value $NUMBER is also not equal to 10"
elif [ $NUMBER -gt 10 ]; then
    echo "the value $NUMBER is greater that 10"
    echo "the value $NUMBER is also not equal to 10"   
elif [ $NUMBER -eq 10 ]; then
    echo "the value $NUMBER is equal to 10" 
else
    echo "the number is not valid"
fi