#!/bin/bash

alias sail=./vendor/bin/sail 
sail up -d
sleep 30s 
if [ -z ${var+x} ];
then sleep 3s sail artisan migrate;
else  sleep 3s sail artisan migrate; (echo "seeding..." php artisan db:seed);
fi