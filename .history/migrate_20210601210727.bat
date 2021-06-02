if  (%1=="seed");
  docker exec samplelaravelreactapp_laravel.test_1 php artisan migrate seed
else
  docker exec samplelaravelreactapp_laravel.test_1 php artisan migrate