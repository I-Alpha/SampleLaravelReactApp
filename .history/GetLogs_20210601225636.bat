@echo off 
if 
FOR /F "tokens=* USEBACKQ" %%F IN (`docker inspect --format='{{.LogPath}}' samplelaravelreactapp_laravel.test_1`) DO (
SET var=%%F  
)
docker logs -f samplelaravelreactapp_laravel.test_1 > /Dockerlogs/Container_log.txt 
docker inspect %var% >> /Dockerlogs/log.txt 
 