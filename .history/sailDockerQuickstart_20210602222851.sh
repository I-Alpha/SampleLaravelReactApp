#!/bin/bash
chmod +x to-run.bat
chmod +x sailDockerComposeUp.sh
cmd -c "npm_update.bat"
sh sailDockerComposeUp.sh $1 
