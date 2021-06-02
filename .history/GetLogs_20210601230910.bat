@echo off 


if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs)

FOR /F "tokens=* USEBACKQ" %%F IN (`docker inspect --format='{{.LogPath}}' samplelaravelreactapp_laravel.test_1`) DO (
SET var=%%F  
)
if "%1"=="file" (echo docker logs samplelaravelreactapp_laravel.test_1 >> Dockerlogs/Container_log.txt && open %var% >> /Dockerlogs/log.txt && exit) ^ 
else (docker logs  samplelaravelreactapp_laravel.test_1 >> /Dockerlogs/Container_log.txt)

docker stats -f samplelaravelreactapp_laravel.test_1 >> /Dockerlogs/DockerStats.txt