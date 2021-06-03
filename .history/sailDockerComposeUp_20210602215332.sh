#!/bin/bash
alias sail=./vendor/bin/sail
sail up -d
if [ -z ${var+x} ];
then sleep 3s sail artisan migrate;
else  (sleep 3s sail artisan migrate echo "seeding..." php artisan db:seed);
fi