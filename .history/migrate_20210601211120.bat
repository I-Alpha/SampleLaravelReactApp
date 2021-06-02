if  (%1=="seed");
  docker exec samplelaravelreactapp_laravel.test_1 php artisan migrate
   sail artisan migrate;
else
  docker exec samplelaravelreactapp_laravel.test_1 php artisan migrate