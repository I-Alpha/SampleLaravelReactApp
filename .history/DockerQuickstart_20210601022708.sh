#!/bin/bash
start "npm_update" cmd /K"npm_update.bat"
process 
sleep 6s
sh dockerComposeUp.sh $2