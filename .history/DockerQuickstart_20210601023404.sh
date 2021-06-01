#!/bin/bash
start / "npm_update" cmd /c "npm_update.bat" &
tasklist /V /FI "npm_update*"
if errorlevel 1 taskkill /f /im "npm_update"
 
sleep 6s
sh dockerComposeUp.sh $2