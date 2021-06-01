#!/bin/bash
start /WAIT cmd "npm_update.bat"
precess 
sleep 6s
sh dockerComposeUp.sh $2