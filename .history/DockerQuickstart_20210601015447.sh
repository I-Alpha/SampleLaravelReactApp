#!/bin/bash
start /wait npm_update.bat
start sh dockerComposeUp.sh $2