@echo off 

if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs) 

FOR /F "tokens=* USEBACKQ" %%F IN (`docker ps -f name=samplelaravelreactapp_laravel.test_1`) DO (
SET CID=%%F
)
if not "%CID%" == "1" ( ECHO "Container doesn't exist") ^
else ( docker-compose logs -t > Dockerlogs/Container_log.log & docker stats --no-stream  > Dockerlogs/DockerStats.log)

unset CID