#!/bin/bash
chmod +x npm_update.bat
chmod +x sailDockerComposeUp.sh $1 

./npm_update.bat
./sailDockerComposeUp.sh $1 
