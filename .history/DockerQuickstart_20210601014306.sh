#!/bin/bash
start /wait cmd /Cc "npm_update" && sh dockerComposeUp.sh $2