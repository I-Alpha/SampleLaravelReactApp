#!/bin/bash
chmod +x npm_update.bat
chmod +x sailDockerComposeUp.sh $1 

./npm_update.bat

echo 'starting sailDockerComposeUp.sh '
./sailDockerComposeUp.sh $1 

