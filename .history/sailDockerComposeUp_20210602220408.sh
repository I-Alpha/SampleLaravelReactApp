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
   start /WAIT sail artisan migrate
   echo "seeding..." 
   start sail artisan db:seed
fi