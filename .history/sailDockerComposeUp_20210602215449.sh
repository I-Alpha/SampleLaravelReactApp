#!/bin/bash
alias sail=./vendor/bin/sail
sail up -d
if [ -z ${var+x} ];
then (sleep 6s ; sail artisan migrate0;
else  (sleep 6s ; sail artisan migrate ; echo "seeding..." ; php artisan db:seed);
fi