#!/bin/bash
start  "npm_update"
wsl sh ./sailDockerComposeUp.sh $1
wsl sail artisan migrate