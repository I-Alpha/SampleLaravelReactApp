#!/bin/bash
start "npm_update"
sleep 30s 
wsl sh ./dockerComposeUp.sh $1
wsl sail artisan migrate