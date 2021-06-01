#!/bin/bash
docker-compose up 
alias sail=./vendor/bin/sail 
sail artisan migrate 
sail up -d