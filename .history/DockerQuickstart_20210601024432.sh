#!/bin/bash
start /WAIT /k npm_update.bat &
sleep 25s 
sh ./dockerComposeUp.sh $1