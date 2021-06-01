#!/bin/bash
start /WAIT npm_update.bat 
sleep 25s 
sh ./dockerComposeUp.sh $1