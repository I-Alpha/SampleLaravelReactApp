#!/bin/b
ash
docker-compose down
docker system prune --force
echo 'Purge complete' 