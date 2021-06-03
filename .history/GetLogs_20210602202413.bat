@echo off 


if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs)
[ ! "$(docker ps -a | grep <name>)" ]
docker-compose logs -t > Dockerlogs/Container_log.log  
docker stats --no-stream  > Dockerlogs/DockerStats.log 