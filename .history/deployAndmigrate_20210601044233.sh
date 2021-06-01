#!/bin/bash
docker-composer up 
docker exec laravelweb php artisan migrate