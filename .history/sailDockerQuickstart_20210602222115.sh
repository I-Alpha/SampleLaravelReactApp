#!/bin/bash
CALL /WAIT cmd.exe npm_update &&wsl sh ./sailDockerComposeUp.sh $1 && wsl sail artisan migrate