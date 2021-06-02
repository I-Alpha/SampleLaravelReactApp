@echo off 


if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs)

docker-compose logs -t - > Dockerlogs/Container_log.txt 2>&1
docker stats -a -t --no-stream  > Dockerlogs/DockerStats.txt
wsl cat  /var/run/docker.sock http://localhost/containers/samplelaravelreactapp_laravel.test_1/stats > DockerLogs/fullmetrics.json