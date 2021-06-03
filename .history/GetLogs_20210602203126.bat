@echo off 

if [ $(docker ps -q -f name=samplelaravelreactapp_laravel.test_1)" ]; then
    if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs)
    docker-compose logs -t > Dockerlogs/Container_log.log  
    docker stats --no-stream  > Dockerlogs/DockerStats.log 