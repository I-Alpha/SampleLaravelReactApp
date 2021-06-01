#!/bin/bash
docker-compose up 
alias sail=./vendor/bin/sail 
sleep 10s
sail artisan migrate 