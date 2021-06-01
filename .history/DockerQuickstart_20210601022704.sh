#!/bin/bash
start "npm_update" <command will be executed> cmd /K"npm_update.bat"
process 
sleep 6s
sh dockerComposeUp.sh $2