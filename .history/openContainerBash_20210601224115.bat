echo "docker logs samplelaravelreactapp_laravel.test_1 > /tmp/stdout.log"

set str1  = docker inspect --format='{{.LogPath}}' samplelaravelreactapp_laravel.test_1
estr1 