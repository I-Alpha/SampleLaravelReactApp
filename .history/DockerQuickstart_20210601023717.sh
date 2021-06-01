#!/bin/bash
start /WAIT npm_update.bat &  sleep 10s &&  sh dockerComposeUp.sh $2