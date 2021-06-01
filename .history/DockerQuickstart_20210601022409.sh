#!/bin/bash
start /WAIT cmd "npm_update.bat" &
sleep s
sh dockerComposeUp.sh $2