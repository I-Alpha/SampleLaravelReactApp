#!/bin/bash
start /WAIT  cmd /K"npm_update.bat"
process 
sleep 6s
sh dockerComposeUp.sh $2