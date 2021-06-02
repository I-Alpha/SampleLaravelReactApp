@echo off 


if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs)

docker-compose logs -t > Dockerlogs/Container_log.log 2>&1
docker stats -no-stream  > Dockerlogs/DockerStats.log
wsl cat  /var/run/docker.sock http://localhost/containers/samplelaravelreactapp_laravel.test_1/stats > DockerLogs/fullmetrics.log