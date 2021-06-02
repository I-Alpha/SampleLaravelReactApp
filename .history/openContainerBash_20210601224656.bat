echo "docker logs samplelaravelreactapp_laravel.test_1 > /tmp/stdout.log"
 
docker inspect --format='{{.LogPath}}' samplelaravelreactapp_laravel.test_1    
FOR /F "tokens=* USEBACKQ" %%F IN (`command`) DO (
SET var=%%F
)
ECHO %var%
/var/lib/docker/containers/982d5eadd35b95c0a491e6851f9cca72326723a999c9e4d4f6a9af0a76d87c7f/982d5eadd35b95c0a491e6851f9cca72326723a999c9e4d4f6a9af0a76d87c7f-json.log