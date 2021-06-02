echo "docker logs samplelaravelreactapp_laravel.test_1 > /tmp/stdout.log"
 
FOR /F "tokens=* USEBACKQ" %%F IN (`command`) DO (
SET var=%%docker inspect --format='{{.LogPath}}' samplelaravelreactapp_laravel.test_1    
)
echo %var%
 