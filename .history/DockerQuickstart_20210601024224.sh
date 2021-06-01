#!/bin/bash
start /WAIT npm_update.bat
sleep 30s 
sh ./dockerComposeUp.sh $21