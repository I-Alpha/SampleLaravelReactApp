#!/bin/bash
start /wait npm_update.bat &&  
start /wait sh dockerComposeUp.sh $2