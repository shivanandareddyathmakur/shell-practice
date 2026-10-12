#!/bin/bash

echo -n "Enter Number: "
read n

# Edge case: Numbers less than 2 are not prime
if [ $n -lt 2 ]; then
    echo "$n is not a prime number."
    exit 0
fi

# Loop from 2 to n/2 to find potential factors
for ((i=2; i<=$n/2; i++))
do
    # % is the modulo operator; it checks for a remainder
    if [ $(( n % i )) -eq 0 ]
    then
        echo "$n is not a prime number."
        exit 0 # Exit early if a factor is found
    fi
done