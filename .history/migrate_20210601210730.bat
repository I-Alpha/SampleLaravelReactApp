if  (%1=="seed");
  docker exec samplelaravelreactapp_laravel.test_1 php artisan migrateseed
else
  docker exec samplelaravelreactapp_laravel.test_1 php artisan migrate