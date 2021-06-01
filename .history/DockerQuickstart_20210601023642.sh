#!/bin/bash
start /WAIT npm_update.bat &  sleep 6s &  sh dockerComposeUp.sh $2