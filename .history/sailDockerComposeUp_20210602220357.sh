#!/bin/bash
alias sail=./vendor/bin/sail
docker-compose up -d
echo "migrating..." 
if [ -z ${var+x} ]; then 
   sleep 10s
   sail artisan migrate
   echo "no seeding..."
else  
   sleep 6s
   start sail artisan migrate
   echo "seeding..." 
   sail artisan db:seed
fi