!#/bin/bash
@echo off 

if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs)
docker container top {{.State.Running}}  samplelaravelreactapp_laravel.test_1
if 1 ^ 


CONTAINER_NAME='samplelaravelreactapp_laravel.test_1'

CID=$(docker ps -q -f status=running -f name=^/${CONTAINER_NAME}$)
if [ ! "${CID}" ]; then
  echo "Container doesn't exist"
else 
  docker-compose logs -t > Dockerlogs/Container_log.log & docker stats --no-stream  > Dockerlogs/DockerStats.log )
fi
unset CID