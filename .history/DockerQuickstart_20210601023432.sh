#!/bin/bash
npm_update 
tasklist /V /FI "npm_update*"
if errorlevel 1 taskkill /f /im "npm_update"
 
sleep 6s
sh dockerComposeUp.sh $2