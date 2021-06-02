@echo off 
FOR /F "tokens=* USEBACKQ" %%F IN (`docker inspect --format='{{.LogPath}}' samplelaravelreactapp_laravel.test_1`) DO (
SET var=%%F  
)
if "%1"=="file" docker logs -f samplelaravelreactapp_laravel.test_1 >> /Dockerlogs/Container_log.txt 
open %var% >> /Dockerlogs/log.txt 
 

if "%1"=="file" docker logs -f samplelaravelreactapp_laravel.test_1 >> /Dockerlogs/Container_log.txt 
$ docker stats


docker stats [OPTIONS] [CONTAINER...] >> DockerStats.txt