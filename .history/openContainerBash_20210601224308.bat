echo "docker logs samplelaravelreactapp_laravel.test_1 > /tmp/stdout.log"

SET str1  =  echo "docker inspect --format='{{.LogPath}}' samplelaravelreactapp_laravel.test_1%"%
echo "%str1%" 