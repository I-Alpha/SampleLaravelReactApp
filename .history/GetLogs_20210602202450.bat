@echo off 

[ ! "$(docker ps -a | grep <name>)" ] 
if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs)

docker-compose logs -t > Dockerlogs/Container_log.log  
docker stats --no-stream  > Dockerlogs/DockerStats.log 