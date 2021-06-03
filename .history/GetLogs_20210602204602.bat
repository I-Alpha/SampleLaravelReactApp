@echo off 

if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs)

if ! docker top $id &>/dev/null

x = docker inspect -f {{.State.Running}} $samplelaravelreactapp_laravel.test_1

echo %x  
docker-compose logs -t > Dockerlogs/Container_log.log
docker stats --no-stream  > Dockerlogs/DockerStats.log
