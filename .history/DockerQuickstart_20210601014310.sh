#!/bin/bash
start /wait cmd /C npm_update && sh dockerComposeUp.sh $2