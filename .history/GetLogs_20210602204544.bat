@echo off 

if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs)

x = docker inspect -f {{.State.Running}} $samplelaravelreactapp_laravel.test_1
if ! docker top $id &>/dev/null
echo %x  
docker-compose logs -t > Dockerlogs/Container_log.log
docker stats --no-stream  > Dockerlogs/DockerStats.log
