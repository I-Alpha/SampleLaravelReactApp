#!/bin/bash
CALL npm_update
sh ./sailDockerComposeUp.sh $1
wsl sail artisan migrate