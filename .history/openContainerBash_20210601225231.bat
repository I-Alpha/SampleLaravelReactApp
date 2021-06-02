@echo off 
FOR /F "tokens=* USEBACKQ" %%F IN (`docker inspect --format='{{.LogPath}}' samplelaravelreactapp_laravel.test_1`) DO (
SET var=%%F  
)
docker logs samplelaravelreactapp_laravel.test_1 >& /Dockerlogs/Container_log.txt 
%var% >> /Dockerlogs/log.txt 
 