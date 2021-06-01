#!/bin/bash
start /WAIT /c npm_update.bat
sh dockerComposeUp.sh $2