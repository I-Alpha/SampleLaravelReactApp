#!/bin/bash
start /WAIT /c  npm_update.bat &&  sleep 30s  &&  sh dockerComposeUp.sh $2