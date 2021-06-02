echo "docker logs samplelaravelreactapp_laravel.test_1 > /tmp/stdout.log"
 
docker inspect --format='{{.LogPath}}' samplelaravelreactapp_laravel.test_1  > SET str1
echo "%str1%" 