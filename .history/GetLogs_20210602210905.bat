@echo off 

if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs) 

FOR /F "tokens=* USEBACKQ" %%F IN (`docker ps -q -f status=running -f name=samplelaravelreactapp_laravel.test_1`) DO (
SET CID=%%F
)

if not "%CID%" == "0" then ( ECHO "Container doesn't exist") ^ 
else ( docker-compose logs -t > Dockerlogs/Container_log.log & docker stats --no-stream  > Dockerlogs/DockerStats.log)

unset CID