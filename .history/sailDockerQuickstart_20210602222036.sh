#!/bin/bash
start /WAIT cmd.exe npm_update &&wsl sh ./sailDockerComposeUp.sh $1 && wsl sail artisan migrate