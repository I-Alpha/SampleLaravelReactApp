@echo off 

if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs)

if docker container top -f {{.State.Running}} $samplelaravelreactapp_laravel.test_1 (
    
docker-compose logs -t > Dockerlogs/Container_log.log
)

echo %x  
docker stats --no-stream  > Dockerlogs/DockerStats.log
