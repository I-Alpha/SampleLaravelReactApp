#!/bin/bash
cmd npm_update.bat" & BACK_PID=$!
wait $BACK_PID 
sh dockerComposeUp.sh $2