#!/bin/bash
start /WAIT c-c "npm_update.bat"
sleep 25s 
wsl sh ./dockerComposeUp.sh $1