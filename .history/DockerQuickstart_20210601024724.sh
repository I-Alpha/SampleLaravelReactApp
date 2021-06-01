#!/bin/bash
start cmd -c "npm_update"
sleep 25s 
wsl sh ./dockerComposeUp.sh $1