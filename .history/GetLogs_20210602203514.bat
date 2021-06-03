@echo off 
CONTAINER_NAME='mycontainername'

CID=$(docker ps -q -f status=running -f name=^/${CONTAINER_NAME}$)
if [ "${CID}" ]; then
    if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs)
        docker-compose logs -t > Dockerlogs/Container_log.log
        docker stats --no-stream  > Dockerlogs/DockerStats.log
else   
fi
unset CID
    