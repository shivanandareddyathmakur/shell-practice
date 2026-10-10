#!/bin/bash
#DATE=$(date)
#echo "timestamp executed : $DATE"
starttime=$(date +%S)
sleep 10
ENDTIME=$(date +%s)
TOTALTIME=$((ENDTIME-$starttime))
echo "script executed in : $TOTALTIME seconds"

