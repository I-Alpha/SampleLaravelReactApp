#!/bin/bash
start /WAIT /c npm_update.bat &
sleep 25s 
sh ./dockerComposeUp.sh $1