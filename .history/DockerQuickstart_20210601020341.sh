#!/bin/bash

start npm_update.bat &
BACK_PID=$!

sh dockerComposeUp.sh $2