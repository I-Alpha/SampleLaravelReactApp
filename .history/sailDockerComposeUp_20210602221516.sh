#!/bin/bash
alias sail=./vendor/bin/sail
function pause(){
   read -p "$*"
}

docker-compose up -d
echo '

migrating...'
if [ -z ${var+x} ]; then 
   sleep 3s
   docker exec  samplelaravelreactapp_laravel.test_1 php artisan migrate
   echo 'no seeding...'
   pause 'press enter to continue'
else  
   sleep 3s
   docker exec  samplelaravelreactapp_laravel.test_1 php artisan migrate
   echo 'seeding...' 
   docker exec  samplelaravelreactapp_laravel.test_1 php artisan migrate sail artisan db:seed   
   pause "press enter to continue"

fi
PAUSE