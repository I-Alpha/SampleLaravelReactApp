#!/bin/bash
start /wait cmd /npm_update.bat && sh dockerComposeUp.sh $2