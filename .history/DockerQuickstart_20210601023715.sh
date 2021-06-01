#!/bin/bash
start /WAIT npm_update.bat &  sleep s &&  sh dockerComposeUp.sh $2