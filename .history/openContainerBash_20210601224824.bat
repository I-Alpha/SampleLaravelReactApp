echo "docker logs samplelaravelreactapp_laravel.test_1 > /tmp/stdout.log"
 
FOR /F "tokens=* USEBACKQ" %%F IN (`docker inspect --format='{{.LogPath}}' samplelaravelreactapp_laravel.test_1  command`) DO (
SET var=%%  
)
echo %var%
 