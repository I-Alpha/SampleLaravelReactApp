#!/bin/bash
start "npm_update"
sleep 30s 
wsl sh ./saildockerComposeUp.sh $1
wsl sail artisan migrate