#!/bin/bash

#arguments from outside
PERSON1=$1
PERSON2=$2
echo "$PERSON1 : Hi $PERSON2, how are you?"
echo "$PERSON2 : hello $PERSON1, iam fine H R U?"
echo "$PERSON1 : what are doing recently?"
echo "$PERSON2 : iam learning shell scripting"
echo "okok"
echo "i miss u"

echo " please enter your PIN Number "
read PIN_NUMBER #here pinnumber is a variable
echo "pin number is : $PIN_NUMBER"
echo " please enter your secret PIN Number "
read -s SECRET_PIN_NUMBER #using s will hide ur password on screen
echo "ur secret pin number is : $SECRET_PIN_NUMBER"