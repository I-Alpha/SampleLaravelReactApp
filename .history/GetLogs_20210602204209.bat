@echo off 
echo docker inspect -f {{.State.Running}} $samplelaravelreactapp_laravel.test_1

if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs)

docker-compose logs -t > Dockerlogs/Container_log.log
docker stats --no-stream  > Dockerlogs/DockerStats.log
