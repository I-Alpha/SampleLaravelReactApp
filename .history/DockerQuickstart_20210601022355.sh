#!/bin/bash
start /WAIT cmd "npm_update.bat" &
slee

sh dockerComposeUp.sh $2