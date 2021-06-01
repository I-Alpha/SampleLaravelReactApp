#!/bin/bash
start cmd.exe /K "npm_update.bat" && sh dockerComposeUp.sh $2