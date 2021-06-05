@echo off 

if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs)
echo docker container top -f {{.State.Running}} $samplelaravelreactapp_laravel.test_1
if 0 ( docker-compose logs -t > Dockerlogs/Container_log.log & docker stats --no-stream  > Dockerlogs/DockerStats.log ) ^ 
else ( echo "Samplereactapp_laravel.test_1 container not running" )