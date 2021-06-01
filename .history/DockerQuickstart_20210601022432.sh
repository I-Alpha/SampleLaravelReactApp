#!/bin/bash
start /WAIT cmd "npm_update.bat" 
sleep 6s
sh dockerComposeUp.sh $2