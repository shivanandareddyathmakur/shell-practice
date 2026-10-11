#!/bin/bash
NUMBER=$1
if [ $NUMBER -lt 10 ]; then
    echo "value $NUMBER is less than 10"
else
    echo "value $NUMBER is greater that 10"
fi