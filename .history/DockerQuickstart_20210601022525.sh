#!/bin/bash
start /WAIT /K cmd "npm_update.bat"
process 
sleep 6s
sh dockerComposeUp.sh $2