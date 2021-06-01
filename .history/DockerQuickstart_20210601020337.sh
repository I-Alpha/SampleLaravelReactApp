#!/bin/bash

start npm_update.bat &
BACK_PID=$!

wait start npm_update.bat 
sh dockerComposeUp.sh $2