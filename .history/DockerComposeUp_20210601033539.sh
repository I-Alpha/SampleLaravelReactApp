#!/bin/bash

alias sail=./vendor/bin/sail 
sail up -d
sleep 30s 
if [ -z ${var+x} ];
then sleep 3 sail artisan migrate;
else (echo "seeding" sail artisan migrate seed);
fi