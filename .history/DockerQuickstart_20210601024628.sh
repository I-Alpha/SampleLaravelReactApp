#!/bin/bash
start /WAIT cmd /C "npm_update.bat"
sleep 25s 
wsl sh ./dockerComposeUp.sh $1