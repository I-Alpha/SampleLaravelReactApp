#!/bin/bash
chmod +x npm_update.bat
chmod +x sailDockerComposeUp.sh %1%

./npm_update.bat

sh sailDockerComposeUp.sh $1 
