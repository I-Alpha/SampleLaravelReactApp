#!/bin/bash
start /WAIT cmd "npm_update.bat"
sleep 25s 
wsl sh ./dockerComposeUp.sh $1