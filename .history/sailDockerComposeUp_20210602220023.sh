#!/bin/bash
alias sail=./vendor/bin/sail
docker-compose up -d
echo "migrating..." 
if [ -z ${var+x} ]; then
 sleep 10s ; echo "no seeding...";  sail artisan migrate
else  (sleep 6s ; sail artisan migrate ; echo "seeding..." ; php artisan db:seed);
fi