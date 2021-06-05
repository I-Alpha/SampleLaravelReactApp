#!/bin/bash
alias sail=./vendor/bin/sail
docker-compose up -d
if [ -z ${var+x} ];
echo "seeding..." 
then (sleep 6s ; echo "no seeding..."  sail artisan migrate);
else  (sleep 6s ; sail artisan migrate ; echo "seeding..." ; php artisan db:seed);
fi