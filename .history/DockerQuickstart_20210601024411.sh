#!/bin/bash
start /WAIT /C npm_update.bat &
sleep 25s 
sh ./dockerComposeUp.sh $1