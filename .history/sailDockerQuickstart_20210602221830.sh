#!/bin/bash
start /WAIT npm_update
wsl sh ./sailDockerComposeUp.sh $1
wsl sail artisan migrate