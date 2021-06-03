@echo off 

if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs) 
docker ps -f name=samplelaravelreactapp_laravel.test_1 | grep samplelaravelreactapp_laravel.test_1
if not "%CID%" == "1" ( ECHO "Container doesn't exist") ^
else ( docker-compose logs -t > Dockerlogs/Container_log.log & docker stats --no-stream  > Dockerlogs/DockerStats.log)
PAUSE 