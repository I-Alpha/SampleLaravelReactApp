#!/bin/bash
start /WAIT cmd "npm_update.bat" &
sleep 20s

sh dockerComposeUp.sh $2