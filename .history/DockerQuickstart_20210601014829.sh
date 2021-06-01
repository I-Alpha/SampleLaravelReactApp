#!/bin/bash
start cmd.exe /k "/npm_update.bat" && sh dockerComposeUp.sh $2