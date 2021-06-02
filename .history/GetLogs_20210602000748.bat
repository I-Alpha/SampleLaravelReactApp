@echo off 


if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs)


docker logs samplelaravelreactapp_laravel.test_1 > DockerlogConts/Container_log.txt 

FOR /F "tokens=* USEBACKQ" %%F IN (`docker inspect --format='{{.LogPath}}' samplelaravelreactapp_laravel.test_1`) DO (
SET var=%%F  
)

if "%1"=="file" (docker logs samplelaravelreactapp_laravel.test_1 > Dockerlogs/Container_log.txt 2>&1&&  %var% > Dockerlogs/log.txt && exit) ^ 
else (docker logs  samplelaravelreactapp_laravel.test_1 > Dockerlogs/Container_log.txt)

docker cp samplelaravelreactapp_laravel.test_1:tmp/logs.json Dockerlogs/tmp_Log.txt
docker stats -f samplelaravelreactapp_laravel.test_1 > Dockerlogs/DockerStats.txt