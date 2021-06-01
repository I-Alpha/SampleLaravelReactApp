#!/bin/bash
start /WAIT /k npm_update.bat &&
sleep 30s  && 
sh dockerComposeUp.sh $2