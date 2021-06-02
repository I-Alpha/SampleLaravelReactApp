@echo off 


if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs)


docker logs samplelaravelreactapp_laravel.test_1 > Dockerlog/Container_log.txt 2>&1

FOR /F "tokens=* USEBACKQ" %%F IN (`docker inspect --format='{{.LogPath}}' samplelaravelreactapp_laravel.test_1`) DO (
SET var=%%F  
)
echo %var%
docker exec  samplelaravelreactapp_laravel.test_1  -f%var% > Dockerlogs/log.txt && ^ docker cp  samplelaravelreactapp_laravel.test_1:tmp Dockerlogs/tmp
docker stats -a --no-stream  > Dockerlogs/DockerStats.txt
bash curl -v --unix-socket /var/run/docker.sock http://localhost/containers/CONTAINER_ID/stats > DockerLogs/fullmetrics.json