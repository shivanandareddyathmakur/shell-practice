#!/bin/bash
num=$1
if [ $num -le 1 ]; then
    echo "$num is not a prime number"
    exit
fi

prime=1

for ((i=2; i*i<=num; i++))
do
    if [ $((num % i)) -eq 0 ]; then
        prime=0
        break
    fi
done

if [ $prime -eq 1 ]; then
    echo "$num is a prime number"
else
    echo "$num is not a prime number"
fi