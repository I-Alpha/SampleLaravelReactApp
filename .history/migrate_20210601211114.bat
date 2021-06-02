if  (%1=="seed");
  docker exec samplelaravelreactapp_laravel.test_1 php artisan migrate
  sleep 3s sail artisan migrate;
else
  docker exec samplelaravelreactapp_laravel.test_1 php artisan migrate