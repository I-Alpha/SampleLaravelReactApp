'docker logs samplelaravelreactapp_laravel.test_1 > /tmp/stdout.log 
docker inspect --format='{{.LogPath}}' containername