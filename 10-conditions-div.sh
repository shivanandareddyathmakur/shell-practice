#!/bin/bash
echo "please enter your number"
read NUMBER
if [ $((NUMBER % 2)) -eq 0 ]; then
    echo "the given number is even"
else
    echo "the given number is odd"
fi