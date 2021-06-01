#!/bin/bash
start /WAIT cmd /c "npm_update.bat"
sleep 25s 
wsl sh ./dockerComposeUp.sh $1