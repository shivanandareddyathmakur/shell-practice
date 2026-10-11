#!/bin/bash
NUMBER=$1
if [ $NUMBER lt 10 ]; then
    echo "value $NUMBER is less than 10"
elif [ $NUMBER gt 10 ]; then
    echo "value $NUMBER is greater that 10"
elif [ $NUMBER -eq 10 ]; then
    echo "value $NUMBER is equal to 10"
else
    echo "value $NUMBER is also not equal to 10"
fi