#!/bin/bash

start npm_update.bat &
BACK_PID=$!
wait 
sh dockerComposeUp.sh $2