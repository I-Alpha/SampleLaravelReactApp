@echo off 

if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs)

if (1docker container top -f {{.State.Running}} $samplelaravelreactapp_laravel.test_11) ( ^ 

docker-compose logs -t > Dockerlogs/Container_log.log
docker stats --no-stream  > Dockerlogs/DockerStats.log

) else ( echo "Samplereactapp_laravel.test_1 container not running" )
