@echo off 


if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs)


docker logs samplelaravelreactapp_laravel.test_1 > Dockerlog/Container_log.txt 2>&1
docker stats -a --no-stream  > Dockerlogs/DockerStats.txt
bash curl -v --unix-socket /var/run/docker.sock http://localhost/containers/samplelaravelreactapp_laravel/stats > DockerLogs/fullmetrics.json