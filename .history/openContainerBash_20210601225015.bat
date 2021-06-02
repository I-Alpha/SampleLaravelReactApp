@echo off
echo "docker logs samplelaravelreactapp_laravel.test_1 > /tmp/stdout.log"
 
FOR /F "tokens=* USEBACKQ" %%F IN (`docker inspect --format='{{.LogPath}}' samplelaravelreactapp_laravel.test_1`) DO (
SET var=%%F  
)

%var% >> logs/log.txt 
 