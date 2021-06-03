#!/bin/bash
start /WAITcmd.rxr npm_update &&wsl sh ./sailDockerComposeUp.sh $1 && wsl sail artisan migrate