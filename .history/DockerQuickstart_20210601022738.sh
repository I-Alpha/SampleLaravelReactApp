#!/bin/bash
start "npm_update" cmd /K "npm_update.bat"
tasklist /V /FI "WindowTitle eq service1*"
process 
sleep 6s
sh dockerComposeUp.sh $2