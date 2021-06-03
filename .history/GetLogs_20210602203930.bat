@echo off 

SET CONTAINER_NAME="samplelaravelreactapp_laravel.test_1"

SET CID=$(docker ps -q -f status=running -f name=^/${CONTAINER_NAME}$)
if [ "${CID}" ]; then
    if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs)
        docker-compose logs -t > Dockerlogs/Container_log.log
        docker stats --no-stream  > Dockerlogs/DockerStats.log
else 
    echo "Container doesn't exist."
fi
unset CID
    