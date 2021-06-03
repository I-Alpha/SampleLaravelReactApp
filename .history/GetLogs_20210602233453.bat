@echo off 

if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs) 
  docker-compose logs -t > Dockerlogs/Container_log.log 
  docker stats --no-stream  > Dockerlogs/DockerStats.log
  docker cp samplelaravelreactapp_laravel.test_1: var/log Dockerlogs/
PAUSE 