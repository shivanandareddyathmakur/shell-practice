#!/bin/bash
NUMBER=$1
if [ $(($NUMBER % 1)) -eq 0 && $(($NUMBER % $NUMBER)) -eq 0 ]; then
    echo "the input number is a prime number"
else
    echo 'the input number is not a prime number"
fi