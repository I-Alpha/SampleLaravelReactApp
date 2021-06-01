#!/bin/bash

alias sail=./vendor/bin/sail 
sail up -d
sleep 20s 
if [ -z ${var+x} ];
then sail artisan migrate;
else echo "seeding" sail artisan migrate seed;fi