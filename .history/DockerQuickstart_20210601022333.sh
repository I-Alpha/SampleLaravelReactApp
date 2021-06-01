#!/bin/bash
start /WAIT cmd "npm_update.bat   &
BACK_PID=$!
while kill -0 $BACK_PID ; do
    echo "Process is still active..."
    sleep 1
    # You can add a timeout here if you want
done

sh dockerComposeUp.sh $2