#!/bin/bash
chmod +x npm_update.bat
chmod +x sailDockerComposeUp.sh

cmd -c "npm_update.bat"
sh sailDockerComposeUp.sh $1 
