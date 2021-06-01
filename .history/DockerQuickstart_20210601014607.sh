#!/bin/bash
start cmd /K "npm_update.bat" && sh dockerComposeUp.sh $2