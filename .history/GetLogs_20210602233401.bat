@echo off 

if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs) 
  docker-compose logs -t > Dockerlogs/Container_log.log 
  docker stats --no-stream  > Dockerlogs/DockerStats.log
  docke cp samplelaravelreactapp_laravel.test_1 | grep samplelaravelreactapp_laravel.test_1
PAUSE 