#!/bin/bash
alias sail=./vendor/bin/sail
function pause(){
   read -p "$*"
}
#docker-compose up -d
echo '

migrating...'
if [ -z ${var+x} ]; then 
   sleep 10s
   #start /WAIT artisan migrate
   echo 'no seeding...'
   pause "press enter to continue"
else  
   sleep 6s
   #start /WAIT sail artisan migrate
   echo 'seeding...' 
   #start /WAIT sail artisan db:seed
   
   pause "press enter to continue"

fi
PAUSE