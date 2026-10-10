#!/bin/bash
#NAME=DEVOPS
#NAME=("linux" "shell" "docker")
FRIENDS=("shiva" "siva" "sai" "shashi")
echo "all are best friends : ${FRIENDS[@]}"
echo "tall guy is : ${FRIENDS[0]}" #index(0,1,2,3) max index is 3}
echo "intelligent guys are : ${FRIENDS[1]}"
echo "intelligent guys are : ${FRIENDS[3]}"
echo "UNIQUE guy is : ${FRIENDS[2]}"