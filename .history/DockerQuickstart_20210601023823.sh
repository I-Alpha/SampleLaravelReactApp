#!/bin/bash
start /WAIT CMD  npm_update.bat &&  sleep 30s  &&  sh dockerComposeUp.sh $2