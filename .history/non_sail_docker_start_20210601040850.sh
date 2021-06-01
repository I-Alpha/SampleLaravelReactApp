#!/bin/bash
docker-compose up 
alias sail=./vendor/bin/sail 
sail docker-compose 
sail up -d