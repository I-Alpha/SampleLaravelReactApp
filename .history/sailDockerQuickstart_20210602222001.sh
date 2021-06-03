#!/bin/bash
sh ./npm_update/bat &&wsl sh ./sailDockerComposeUp.sh $1 && wsl sail artisan migrate