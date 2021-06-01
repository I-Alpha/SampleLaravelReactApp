#!/bin/bash
start "<window title>" <command will be executed> cmd /K"npm_update.bat"
process 
sleep 6s
sh dockerComposeUp.sh $2