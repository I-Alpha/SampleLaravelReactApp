#!/bin/bash
docker-compose up 
alias sail=./vendor/bin/sail 
sail docker-compose down
sail up -d