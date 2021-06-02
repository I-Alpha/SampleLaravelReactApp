@echo off 


if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs)

docker-compose logs > Dockerlogs/Container_log.txt 
docker stats -a -t --no-stream  > Dockerlogs/DockerStats.txt
wsl cat  /var/run/docker.sock http://localhost/containers/samplelaravelreactapp_laravel.test_1/stats > DockerLogs/fullmetrics.json