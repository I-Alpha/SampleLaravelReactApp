#!/bin/bash

start -c "npm_update.bat" & BACK_PID=$!
wait $BACK_PID
sh dockerComposeUp.sh $2