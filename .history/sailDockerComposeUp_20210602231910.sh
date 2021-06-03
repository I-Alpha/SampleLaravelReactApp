#!/bin/bash
alias sail=./vendor/bin/sail
function pause(){
   read -p "$*"
}
echo ' 
'
docker-compose up -d 

if [ -z ${var+x} ]; then 
   sleep 15s
   docker exec  samplelaravelreactapp_laravel.test_1 php artisan migrate
   echo 'no seeding...'
   pause 'press enter to continue'
else ( 
   sleep 15s
   docker exec  samplelaravelreactapp_laravel.test_1 php artisan migrate
   echo 'seeding...' 
   docker exec samplelaravelreactapp_laravel.test_1 php artisan db:seed   
   pause "press enter to continue")

fi
PAUSE