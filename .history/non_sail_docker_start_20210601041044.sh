#!/bin/bash
docker-compose up 
alias sail=./vendor/bin/sail 
sleep 30s
sail artisan migrate 