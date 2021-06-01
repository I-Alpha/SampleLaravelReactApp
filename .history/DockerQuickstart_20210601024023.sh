#!/bin/bash
start /WAIT /k npm_update.bat
sh dockerComposeUp.sh $2