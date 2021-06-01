#!/bin/bash
start /WAIT npm_update.bat

sh ./dockerComposeUp.sh $1