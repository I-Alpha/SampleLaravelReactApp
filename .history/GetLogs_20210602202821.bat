@echo off 





You can check for non-existence of a running container by grepping for a <name> and fire it up later on like this:

[ ! "$(docker ps -a | grep <name>)" ] && docker run -d --name <name> <image>

Better:

Make use of https://docs.docker.com/engine/reference/commandline/ps/ and check if an exited container blocks, so you can remove it first prior to run the container:

if [ ! "$(docker ps -q -f name=<name>)" ]; then
[ "$(docker ps -a | grep <name>)" ] && if not exist "Dockerlogs" (echo "creating Dockerlog directory...." && mkdir Dockerlogs)

docker-compose logs -t > Dockerlogs/Container_log.log  
docker stats --no-stream  > Dockerlogs/DockerStats.log 