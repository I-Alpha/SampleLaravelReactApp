#!/bin/bash
cmd &
BACK_PID=$!

start /K npm_update.bat  

while kill -0 $BACK_PID ; do
    echo "Process is still active..."
    sleep 1
    # You can add a timeout here if you want
done

sh dockerComposeUp.sh $2