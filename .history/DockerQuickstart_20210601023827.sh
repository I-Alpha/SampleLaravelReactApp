#!/bin/bash
start /WAIT /C  npm_update.bat &&  sleep 30s  &&  sh dockerComposeUp.sh $2