@echo off 

echo docker inspect -f {{.State.Running}} $samplelaravelreactapp_laravel.test_1

docker-compose logs -t > Dockerlogs/Container_log.log
     docker stats --no-stream  > Dockerlogs/DockerStats.log
 