@echo off 

exho docker inspect -f {{.State.Running}} $CONTAINER_ID

        docker-compose logs -t > Dockerlogs/Container_log.log
        docker stats --no-stream  > Dockerlogs/DockerStats.log
else 
    echo "Container doesn't exist."
fi
unset CID
    